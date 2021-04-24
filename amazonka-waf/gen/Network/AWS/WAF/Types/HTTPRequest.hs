{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.Types.HTTPRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.HTTPRequest where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WAF.Types.HTTPHeader

-- | The response from a 'GetSampledRequests' request includes an @HTTPRequest@ complex type that appears as @Request@ in the response syntax. @HTTPRequest@ contains information about one of the web requests that were returned by @GetSampledRequests@ .
--
--
--
-- /See:/ 'hTTPRequest' smart constructor.
data HTTPRequest = HTTPRequest'
  { _httprHeaders ::
      !(Maybe [HTTPHeader]),
    _httprURI :: !(Maybe Text),
    _httprMethod :: !(Maybe Text),
    _httprClientIP :: !(Maybe Text),
    _httprCountry :: !(Maybe Text),
    _httprHTTPVersion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HTTPRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httprHeaders' - A complex type that contains two values for each header in the sampled web request: the name of the header and the value of the header.
--
-- * 'httprURI' - The part of a web request that identifies the resource, for example, @/images/daily-ad.jpg@ .
--
-- * 'httprMethod' - The HTTP method specified in the sampled web request. CloudFront supports the following methods: @DELETE@ , @GET@ , @HEAD@ , @OPTIONS@ , @PATCH@ , @POST@ , and @PUT@ .
--
-- * 'httprClientIP' - The IP address that the request originated from. If the @WebACL@ is associated with a CloudFront distribution, this is the value of one of the following fields in CloudFront access logs:     * @c-ip@ , if the viewer did not use an HTTP proxy or a load balancer to send the request     * @x-forwarded-for@ , if the viewer did use an HTTP proxy or a load balancer to send the request
--
-- * 'httprCountry' - The two-letter country code for the country that the request originated from. For a current list of country codes, see the Wikipedia entry <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2> .
--
-- * 'httprHTTPVersion' - The HTTP version specified in the sampled web request, for example, @HTTP/1.1@ .
hTTPRequest ::
  HTTPRequest
hTTPRequest =
  HTTPRequest'
    { _httprHeaders = Nothing,
      _httprURI = Nothing,
      _httprMethod = Nothing,
      _httprClientIP = Nothing,
      _httprCountry = Nothing,
      _httprHTTPVersion = Nothing
    }

-- | A complex type that contains two values for each header in the sampled web request: the name of the header and the value of the header.
httprHeaders :: Lens' HTTPRequest [HTTPHeader]
httprHeaders = lens _httprHeaders (\s a -> s {_httprHeaders = a}) . _Default . _Coerce

-- | The part of a web request that identifies the resource, for example, @/images/daily-ad.jpg@ .
httprURI :: Lens' HTTPRequest (Maybe Text)
httprURI = lens _httprURI (\s a -> s {_httprURI = a})

-- | The HTTP method specified in the sampled web request. CloudFront supports the following methods: @DELETE@ , @GET@ , @HEAD@ , @OPTIONS@ , @PATCH@ , @POST@ , and @PUT@ .
httprMethod :: Lens' HTTPRequest (Maybe Text)
httprMethod = lens _httprMethod (\s a -> s {_httprMethod = a})

-- | The IP address that the request originated from. If the @WebACL@ is associated with a CloudFront distribution, this is the value of one of the following fields in CloudFront access logs:     * @c-ip@ , if the viewer did not use an HTTP proxy or a load balancer to send the request     * @x-forwarded-for@ , if the viewer did use an HTTP proxy or a load balancer to send the request
httprClientIP :: Lens' HTTPRequest (Maybe Text)
httprClientIP = lens _httprClientIP (\s a -> s {_httprClientIP = a})

-- | The two-letter country code for the country that the request originated from. For a current list of country codes, see the Wikipedia entry <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2> .
httprCountry :: Lens' HTTPRequest (Maybe Text)
httprCountry = lens _httprCountry (\s a -> s {_httprCountry = a})

-- | The HTTP version specified in the sampled web request, for example, @HTTP/1.1@ .
httprHTTPVersion :: Lens' HTTPRequest (Maybe Text)
httprHTTPVersion = lens _httprHTTPVersion (\s a -> s {_httprHTTPVersion = a})

instance FromJSON HTTPRequest where
  parseJSON =
    withObject
      "HTTPRequest"
      ( \x ->
          HTTPRequest'
            <$> (x .:? "Headers" .!= mempty)
            <*> (x .:? "URI")
            <*> (x .:? "Method")
            <*> (x .:? "ClientIP")
            <*> (x .:? "Country")
            <*> (x .:? "HTTPVersion")
      )

instance Hashable HTTPRequest

instance NFData HTTPRequest
