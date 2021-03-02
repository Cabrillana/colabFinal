<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit03ce29766322d6203cf42cffa8f22a5d
{
    public static $prefixLengthsPsr4 = array (
        'A' => 
        array (
            'App\\Controllers\\' => 16,
            'App\\Config\\' => 11,
            'App\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'App\\Controllers\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app/controllers',
        ),
        'App\\Config\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app/config',
        ),
        'App\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit03ce29766322d6203cf42cffa8f22a5d::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit03ce29766322d6203cf42cffa8f22a5d::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit03ce29766322d6203cf42cffa8f22a5d::$classMap;

        }, null, ClassLoader::class);
    }
}