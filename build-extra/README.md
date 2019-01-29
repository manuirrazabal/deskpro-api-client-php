This release already contains the vendors needed to run the client api

All you need to do to use it is adding `include (__DIR__ . '/deskpro/include.php');` 
to your code.

Example:

```php
<?php
use Deskpro\API\DeskproClient;
use Deskpro\API\Exception\APIException;

include(__DIR__ . '/deskpro/include.php');

// Create a new client with the URL to your Deskpro instance.
$client = new DeskproClient('http://deskpro-dev.com');

$client->setAuthKey(1, 'dev-admin-code');

try {
    $resp = $client->get('/tickets');
    print_r($resp->getData());
    print_r($resp->getMeta());
} catch (APIException $e) {
    echo $e->getMessage();
}
```
