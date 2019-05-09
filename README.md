This repo contains code that calls a [Twilio Function](https://www.twilio.com/console/runtime/functions/manage) which returns a Pokemon joke or two in Plain Text as well as JSON. 

![pikachu gif](https://s3.amazonaws.com/com.twilio.prod.twilio-docs/original_images/excitedpika.gif)

To run the app, you will need a [Twilio account](https://twilio.com/try-twilio) to make a [Twilio Function](https://www.twilio.com/console/runtime/functions/manage) and [Xcode](https://developer.apple.com/xcode/).

## Make a Twilio Function
This Twilio Function for our purposes will return a simple hard-coded Pikachu joke. To make that, [on your Functions](https://www.twilio.com/console/runtime/functions), click the red "+" button to make a new Function.
![Make a Twilio Function](https://s3.amazonaws.com/com.twilio.prod.twilio-docs/images/redplusfunc.width-1000.png)

If this is your first Function, you'll instead click "Create a Function".
![First Twilio Function](https://s3.amazonaws.com/com.twilio.prod.twilio-docs/images/qx7ZKxBMY5aV-KVR-sj48fKqRVbXJ8FQhg2Hhyhoy7LDs.width-1000.png)
Then select "Blank" to create a Blank Functions Template, and click "Create". You will be redirected directly into your new Function. There on the next page give your Function a name like "Pokemon-Swift-Function" and add on to the path (which is unique to you) something like "/swift".

![set Function path](https://s3.amazonaws.com/com.twilio.prod.twilio-docs/images/pokemonswiftfunction.width-500.png)

Since we will be calling this Twilio Function directly from a mobile app, the inbound HTTP request will not be signed by Twilio. Make sure to leave this Access Control checkbox unchecked, as shown below.
![Access Control unchecked](https://s3.amazonaws.com/com.twilio.prod.twilio-docs/images/accesscontrolleaveunchecked.width-1000.png)

You can also leave "Event" untouched. In the code section add the following JavaScript, which is used in Twilio Functions, to return our basic Pokemon joke:
```
exports.handler = function(context, event, callback) {
    const joke = 'Why can’t Pokemon play hide-and-seek? Because they\'ll Pikachu!';
    callback(null, joke);
}
```
Click the red "Save" button at the bottom and your Twilio Function should be deploying and should return a single Pokemon joke. You can test that your Function is running by visiting the Function URL path (which you can copy from under `Properties` above) in a web browser, like below.
![Function in browser](https://s3.amazonaws.com/com.twilio.prod.twilio-docs/images/copyprops.width-500.png)

Then in the iOS code, open up your `ViewController` and replace "REPLACE-WITH-YOUR-TWILIO-FUNCTION" with that Twilio Function URL.

![Swift gif](https://s3.amazonaws.com/com.twilio.prod.twilio-docs/original_images/swiftdance.gif)

For a more in-depth tutorial, check out the [corresponding blog post](https://www.twilio.com/blog/call-twilio-functions-from-ios-in-swift).