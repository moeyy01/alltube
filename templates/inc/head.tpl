<head>
    <meta charset="UTF-8"/>
    <meta name=viewport content="width=device-width, initial-scale=1"/>
    {if isset($description)}
        <meta name="description" content="{$description|escape}"/>
        <meta name="twitter:description" content="{$description|escape}"/>
        <meta property="og:description" content="{$description|escape}"/>
    {/if}
    <link rel="stylesheet" href="/alltube/assets/open-sans/open-sans.css"/>
    <link rel="stylesheet" href="/alltube/css/style.css"/>
    <title>{$config->appName}{if isset($title)} - {$title|escape}{/if}</title>
    <link rel="icon" href="/alltube/img/favicon.png"/>
    <meta property="og:title" content="{$config->appName}{if isset($title)} - {$title|escape}{/if}"/>
    <meta property="og:image" content="/alltube/img/logo.png"/>
    <meta name="twitter:card" content="summary"/>
    <meta name="twitter:title" content="{$config->appName}{if isset($title)} - {$title|escape}{/if}"/>
    <meta name="twitter:image" content="/alltube/img/logo.png"/>
    <meta name="twitter:creator" content="@Tael67"/>
    <meta name="theme-color" content="#4F4F4F"/>
    <link rel="manifest" href="/alltube/resources/manifest.json"/>
    <meta name="generator" content="AllTube Download ({$config->getAppVersion()})"/>

    {if isset($debug_render)}
        {$debug_render->renderHead()}
    {/if}
</head>
