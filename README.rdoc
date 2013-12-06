= pin_up_receipts

Generate HTML receipts from your Pin charges.

[![Build Status](https://travis-ci.org/dNitza/pin_up_receipts.png)](https://travis-ci.org/dNitza/pin_up_receipts)

## Receipts

At the moment basic receipt creation from a succesful charge is supported, however, I'd like to build out this feature and include failed transactions and refunds.

There are two ways to go about creating and viewing / sharing a receipt.

#### Rendering a receipt as HTML

##### Basic Usage:

The following will return a HTML receipt for you to do with as you wish.

    @charge = Pin::Charges.find("token")
    @company_details = ["ABC Widgets","123 Fake Street Melbourne","VIC 3000","ABN: 12 345 678 910"]
    @receipt = Pin::Receipt.new(@charge, @company_details)
    @receipt.render()

Your "comapny_details" can be replaced with whatever information you wish to be displayed at the top right hand side (see `tmp/receipt.html`).

##### Advanced Usage:

There are four additional options that can be passed to `Pin::Receipt.new`.

The first is the path to your logo should you wish to include it in the footer.

The second is some additional payment information you might want to add (such as tax, fee or discount information). This can be done by passing a hash in as argument 4 eg:

    payment_options = {}
    payment_options["fee"] = {"name" => "late fee", "amount" => "$10.00"}
    payment_options["tax"] = {"name" => "GST", "amount" => "$10.00"}
    payment_options["discount"] = {"name" => "Member Discount", "amount" => "$10.00"}

A path to a custom receipt template can be passed in as the 5th argument, while a path that you would like the receipt to be saved to can be passed in as the 6th argument.


##### Saving a receipt

To save a receipt it's exactky the same as above, just call `save` instead of render. By default, a receipt will be saved into `tmp/receipt.html` unless a path is specified.

If you would like a PDF receipt, you should be able to "print as PDF" from a browser dialog.

##### Custom receipt template

If you would like you can use a custom receipt template to suit your branding or design needs. To get an idea of which variables are available, take a look at  `/views/receit.html.erb`

== Contributing to pin_up_receipts
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

== Copyright

Copyright (c) 2013 Daniel Nitsikopoulos. See LICENSE.txt for
further details.

