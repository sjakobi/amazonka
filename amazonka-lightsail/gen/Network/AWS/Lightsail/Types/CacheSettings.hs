{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.CacheSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.CacheSettings where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.CookieObject
import Network.AWS.Lightsail.Types.HeaderObject
import Network.AWS.Lightsail.Types.QueryStringObject
import Network.AWS.Prelude

-- | Describes the cache settings of an Amazon Lightsail content delivery network (CDN) distribution.
--
--
-- These settings apply only to your distribution's @cacheBehaviors@ (including the @defaultCacheBehavior@ ) that have a @behavior@ of @cache@ .
--
--
-- /See:/ 'cacheSettings' smart constructor.
data CacheSettings = CacheSettings'
  { _csMaximumTTL ::
      !(Maybe Integer),
    _csForwardedHeaders ::
      !(Maybe HeaderObject),
    _csDefaultTTL :: !(Maybe Integer),
    _csCachedHTTPMethods :: !(Maybe Text),
    _csAllowedHTTPMethods :: !(Maybe Text),
    _csForwardedQueryStrings ::
      !(Maybe QueryStringObject),
    _csForwardedCookies ::
      !(Maybe CookieObject),
    _csMinimumTTL :: !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CacheSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csMaximumTTL' - The maximum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated. The value specified applies only when the origin adds HTTP headers such as @Cache-Control max-age@ , @Cache-Control s-maxage@ , and @Expires@ to objects.
--
-- * 'csForwardedHeaders' - An object that describes the headers that are forwarded to the origin. Your content is cached based on the headers that are forwarded.
--
-- * 'csDefaultTTL' - The default amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the content has been updated.
--
-- * 'csCachedHTTPMethods' - The HTTP method responses that are cached by your distribution. You can specify the following options:     * @GET,HEAD@ - The distribution caches responses to the @GET@ and @HEAD@ methods.     * @GET,HEAD,OPTIONS@ - The distribution caches responses to the @GET@ , @HEAD@ , and @OPTIONS@ methods.
--
-- * 'csAllowedHTTPMethods' - The HTTP methods that are processed and forwarded to the distribution's origin. You can specify the following options:     * @GET,HEAD@ - The distribution forwards the @GET@ and @HEAD@ methods.     * @GET,HEAD,OPTIONS@ - The distribution forwards the @GET@ , @HEAD@ , and @OPTIONS@ methods.     * @GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE@ - The distribution forwards the @GET@ , @HEAD@ , @OPTIONS@ , @PUT@ , @PATCH@ , @POST@ , and @DELETE@ methods. If you specify the third option, you might need to restrict access to your distribution's origin so users can't perform operations that you don't want them to. For example, you might not want users to have permission to delete objects from your origin.
--
-- * 'csForwardedQueryStrings' - An object that describes the query strings that are forwarded to the origin. Your content is cached based on the query strings that are forwarded.
--
-- * 'csForwardedCookies' - An object that describes the cookies that are forwarded to the origin. Your content is cached based on the cookies that are forwarded.
--
-- * 'csMinimumTTL' - The minimum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated. A value of @0@ must be specified for @minimumTTL@ if the distribution is configured to forward all headers to the origin.
cacheSettings ::
  CacheSettings
cacheSettings =
  CacheSettings'
    { _csMaximumTTL = Nothing,
      _csForwardedHeaders = Nothing,
      _csDefaultTTL = Nothing,
      _csCachedHTTPMethods = Nothing,
      _csAllowedHTTPMethods = Nothing,
      _csForwardedQueryStrings = Nothing,
      _csForwardedCookies = Nothing,
      _csMinimumTTL = Nothing
    }

-- | The maximum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated. The value specified applies only when the origin adds HTTP headers such as @Cache-Control max-age@ , @Cache-Control s-maxage@ , and @Expires@ to objects.
csMaximumTTL :: Lens' CacheSettings (Maybe Integer)
csMaximumTTL = lens _csMaximumTTL (\s a -> s {_csMaximumTTL = a})

-- | An object that describes the headers that are forwarded to the origin. Your content is cached based on the headers that are forwarded.
csForwardedHeaders :: Lens' CacheSettings (Maybe HeaderObject)
csForwardedHeaders = lens _csForwardedHeaders (\s a -> s {_csForwardedHeaders = a})

-- | The default amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the content has been updated.
csDefaultTTL :: Lens' CacheSettings (Maybe Integer)
csDefaultTTL = lens _csDefaultTTL (\s a -> s {_csDefaultTTL = a})

-- | The HTTP method responses that are cached by your distribution. You can specify the following options:     * @GET,HEAD@ - The distribution caches responses to the @GET@ and @HEAD@ methods.     * @GET,HEAD,OPTIONS@ - The distribution caches responses to the @GET@ , @HEAD@ , and @OPTIONS@ methods.
csCachedHTTPMethods :: Lens' CacheSettings (Maybe Text)
csCachedHTTPMethods = lens _csCachedHTTPMethods (\s a -> s {_csCachedHTTPMethods = a})

-- | The HTTP methods that are processed and forwarded to the distribution's origin. You can specify the following options:     * @GET,HEAD@ - The distribution forwards the @GET@ and @HEAD@ methods.     * @GET,HEAD,OPTIONS@ - The distribution forwards the @GET@ , @HEAD@ , and @OPTIONS@ methods.     * @GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE@ - The distribution forwards the @GET@ , @HEAD@ , @OPTIONS@ , @PUT@ , @PATCH@ , @POST@ , and @DELETE@ methods. If you specify the third option, you might need to restrict access to your distribution's origin so users can't perform operations that you don't want them to. For example, you might not want users to have permission to delete objects from your origin.
csAllowedHTTPMethods :: Lens' CacheSettings (Maybe Text)
csAllowedHTTPMethods = lens _csAllowedHTTPMethods (\s a -> s {_csAllowedHTTPMethods = a})

-- | An object that describes the query strings that are forwarded to the origin. Your content is cached based on the query strings that are forwarded.
csForwardedQueryStrings :: Lens' CacheSettings (Maybe QueryStringObject)
csForwardedQueryStrings = lens _csForwardedQueryStrings (\s a -> s {_csForwardedQueryStrings = a})

-- | An object that describes the cookies that are forwarded to the origin. Your content is cached based on the cookies that are forwarded.
csForwardedCookies :: Lens' CacheSettings (Maybe CookieObject)
csForwardedCookies = lens _csForwardedCookies (\s a -> s {_csForwardedCookies = a})

-- | The minimum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated. A value of @0@ must be specified for @minimumTTL@ if the distribution is configured to forward all headers to the origin.
csMinimumTTL :: Lens' CacheSettings (Maybe Integer)
csMinimumTTL = lens _csMinimumTTL (\s a -> s {_csMinimumTTL = a})

instance FromJSON CacheSettings where
  parseJSON =
    withObject
      "CacheSettings"
      ( \x ->
          CacheSettings'
            <$> (x .:? "maximumTTL")
            <*> (x .:? "forwardedHeaders")
            <*> (x .:? "defaultTTL")
            <*> (x .:? "cachedHTTPMethods")
            <*> (x .:? "allowedHTTPMethods")
            <*> (x .:? "forwardedQueryStrings")
            <*> (x .:? "forwardedCookies")
            <*> (x .:? "minimumTTL")
      )

instance Hashable CacheSettings

instance NFData CacheSettings

instance ToJSON CacheSettings where
  toJSON CacheSettings' {..} =
    object
      ( catMaybes
          [ ("maximumTTL" .=) <$> _csMaximumTTL,
            ("forwardedHeaders" .=) <$> _csForwardedHeaders,
            ("defaultTTL" .=) <$> _csDefaultTTL,
            ("cachedHTTPMethods" .=) <$> _csCachedHTTPMethods,
            ("allowedHTTPMethods" .=) <$> _csAllowedHTTPMethods,
            ("forwardedQueryStrings" .=)
              <$> _csForwardedQueryStrings,
            ("forwardedCookies" .=) <$> _csForwardedCookies,
            ("minimumTTL" .=) <$> _csMinimumTTL
          ]
      )
