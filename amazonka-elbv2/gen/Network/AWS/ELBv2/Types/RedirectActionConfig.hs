{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.RedirectActionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.RedirectActionConfig where

import Network.AWS.ELBv2.Types.RedirectActionStatusCodeEnum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a redirect action.
--
--
-- A URI consists of the following components: protocol://hostname:port/path?query. You must modify at least one of the following components to avoid a redirect loop: protocol, hostname, port, or path. Any components that you do not modify retain their original values.
--
-- You can reuse URI components using the following reserved keywords:
--
--     * #{protocol}
--
--     * #{host}
--
--     * #{port}
--
--     * #{path} (the leading "/" is removed)
--
--     * #{query}
--
--
--
-- For example, you can change the path to "/new/#{path}", the hostname to "example.#{host}", or the query to "#{query}&value=xyz".
--
--
-- /See:/ 'redirectActionConfig' smart constructor.
data RedirectActionConfig = RedirectActionConfig'
  { _racQuery ::
      !(Maybe Text),
    _racPort :: !(Maybe Text),
    _racProtocol :: !(Maybe Text),
    _racHost :: !(Maybe Text),
    _racPath :: !(Maybe Text),
    _racStatusCode ::
      !RedirectActionStatusCodeEnum
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RedirectActionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'racQuery' - The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading "?", as it is automatically added. You can specify any of the reserved keywords.
--
-- * 'racPort' - The port. You can specify a value from 1 to 65535 or #{port}.
--
-- * 'racProtocol' - The protocol. You can specify HTTP, HTTPS, or #{protocol}. You can redirect HTTP to HTTP, HTTP to HTTPS, and HTTPS to HTTPS. You cannot redirect HTTPS to HTTP.
--
-- * 'racHost' - The hostname. This component is not percent-encoded. The hostname can contain #{host}.
--
-- * 'racPath' - The absolute path, starting with the leading "/". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}.
--
-- * 'racStatusCode' - The HTTP redirect code. The redirect is either permanent (HTTP 301) or temporary (HTTP 302).
redirectActionConfig ::
  -- | 'racStatusCode'
  RedirectActionStatusCodeEnum ->
  RedirectActionConfig
redirectActionConfig pStatusCode_ =
  RedirectActionConfig'
    { _racQuery = Nothing,
      _racPort = Nothing,
      _racProtocol = Nothing,
      _racHost = Nothing,
      _racPath = Nothing,
      _racStatusCode = pStatusCode_
    }

-- | The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading "?", as it is automatically added. You can specify any of the reserved keywords.
racQuery :: Lens' RedirectActionConfig (Maybe Text)
racQuery = lens _racQuery (\s a -> s {_racQuery = a})

-- | The port. You can specify a value from 1 to 65535 or #{port}.
racPort :: Lens' RedirectActionConfig (Maybe Text)
racPort = lens _racPort (\s a -> s {_racPort = a})

-- | The protocol. You can specify HTTP, HTTPS, or #{protocol}. You can redirect HTTP to HTTP, HTTP to HTTPS, and HTTPS to HTTPS. You cannot redirect HTTPS to HTTP.
racProtocol :: Lens' RedirectActionConfig (Maybe Text)
racProtocol = lens _racProtocol (\s a -> s {_racProtocol = a})

-- | The hostname. This component is not percent-encoded. The hostname can contain #{host}.
racHost :: Lens' RedirectActionConfig (Maybe Text)
racHost = lens _racHost (\s a -> s {_racHost = a})

-- | The absolute path, starting with the leading "/". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}.
racPath :: Lens' RedirectActionConfig (Maybe Text)
racPath = lens _racPath (\s a -> s {_racPath = a})

-- | The HTTP redirect code. The redirect is either permanent (HTTP 301) or temporary (HTTP 302).
racStatusCode :: Lens' RedirectActionConfig RedirectActionStatusCodeEnum
racStatusCode = lens _racStatusCode (\s a -> s {_racStatusCode = a})

instance FromXML RedirectActionConfig where
  parseXML x =
    RedirectActionConfig'
      <$> (x .@? "Query")
      <*> (x .@? "Port")
      <*> (x .@? "Protocol")
      <*> (x .@? "Host")
      <*> (x .@? "Path")
      <*> (x .@ "StatusCode")

instance Hashable RedirectActionConfig

instance NFData RedirectActionConfig

instance ToQuery RedirectActionConfig where
  toQuery RedirectActionConfig' {..} =
    mconcat
      [ "Query" =: _racQuery,
        "Port" =: _racPort,
        "Protocol" =: _racProtocol,
        "Host" =: _racHost,
        "Path" =: _racPath,
        "StatusCode" =: _racStatusCode
      ]
