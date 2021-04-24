{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.RadiusSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.RadiusSettings where

import Network.AWS.DirectoryService.Types.RadiusAuthenticationProtocol
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a Remote Authentication Dial In User Service (RADIUS) server.
--
--
--
-- /See:/ 'radiusSettings' smart constructor.
data RadiusSettings = RadiusSettings'
  { _rsUseSameUsername ::
      !(Maybe Bool),
    _rsDisplayLabel :: !(Maybe Text),
    _rsRadiusServers :: !(Maybe [Text]),
    _rsRadiusRetries :: !(Maybe Nat),
    _rsRadiusTimeout :: !(Maybe Nat),
    _rsSharedSecret ::
      !(Maybe (Sensitive Text)),
    _rsRadiusPort :: !(Maybe Nat),
    _rsAuthenticationProtocol ::
      !(Maybe RadiusAuthenticationProtocol)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RadiusSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsUseSameUsername' - Not currently used.
--
-- * 'rsDisplayLabel' - Not currently used.
--
-- * 'rsRadiusServers' - An array of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
--
-- * 'rsRadiusRetries' - The maximum number of times that communication with the RADIUS server is attempted.
--
-- * 'rsRadiusTimeout' - The amount of time, in seconds, to wait for the RADIUS server to respond.
--
-- * 'rsSharedSecret' - Required for enabling RADIUS on the directory.
--
-- * 'rsRadiusPort' - The port that your RADIUS server is using for communications. Your on-premises network must allow inbound traffic over this port from the AWS Directory Service servers.
--
-- * 'rsAuthenticationProtocol' - The protocol specified for your RADIUS endpoints.
radiusSettings ::
  RadiusSettings
radiusSettings =
  RadiusSettings'
    { _rsUseSameUsername = Nothing,
      _rsDisplayLabel = Nothing,
      _rsRadiusServers = Nothing,
      _rsRadiusRetries = Nothing,
      _rsRadiusTimeout = Nothing,
      _rsSharedSecret = Nothing,
      _rsRadiusPort = Nothing,
      _rsAuthenticationProtocol = Nothing
    }

-- | Not currently used.
rsUseSameUsername :: Lens' RadiusSettings (Maybe Bool)
rsUseSameUsername = lens _rsUseSameUsername (\s a -> s {_rsUseSameUsername = a})

-- | Not currently used.
rsDisplayLabel :: Lens' RadiusSettings (Maybe Text)
rsDisplayLabel = lens _rsDisplayLabel (\s a -> s {_rsDisplayLabel = a})

-- | An array of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
rsRadiusServers :: Lens' RadiusSettings [Text]
rsRadiusServers = lens _rsRadiusServers (\s a -> s {_rsRadiusServers = a}) . _Default . _Coerce

-- | The maximum number of times that communication with the RADIUS server is attempted.
rsRadiusRetries :: Lens' RadiusSettings (Maybe Natural)
rsRadiusRetries = lens _rsRadiusRetries (\s a -> s {_rsRadiusRetries = a}) . mapping _Nat

-- | The amount of time, in seconds, to wait for the RADIUS server to respond.
rsRadiusTimeout :: Lens' RadiusSettings (Maybe Natural)
rsRadiusTimeout = lens _rsRadiusTimeout (\s a -> s {_rsRadiusTimeout = a}) . mapping _Nat

-- | Required for enabling RADIUS on the directory.
rsSharedSecret :: Lens' RadiusSettings (Maybe Text)
rsSharedSecret = lens _rsSharedSecret (\s a -> s {_rsSharedSecret = a}) . mapping _Sensitive

-- | The port that your RADIUS server is using for communications. Your on-premises network must allow inbound traffic over this port from the AWS Directory Service servers.
rsRadiusPort :: Lens' RadiusSettings (Maybe Natural)
rsRadiusPort = lens _rsRadiusPort (\s a -> s {_rsRadiusPort = a}) . mapping _Nat

-- | The protocol specified for your RADIUS endpoints.
rsAuthenticationProtocol :: Lens' RadiusSettings (Maybe RadiusAuthenticationProtocol)
rsAuthenticationProtocol = lens _rsAuthenticationProtocol (\s a -> s {_rsAuthenticationProtocol = a})

instance FromJSON RadiusSettings where
  parseJSON =
    withObject
      "RadiusSettings"
      ( \x ->
          RadiusSettings'
            <$> (x .:? "UseSameUsername")
            <*> (x .:? "DisplayLabel")
            <*> (x .:? "RadiusServers" .!= mempty)
            <*> (x .:? "RadiusRetries")
            <*> (x .:? "RadiusTimeout")
            <*> (x .:? "SharedSecret")
            <*> (x .:? "RadiusPort")
            <*> (x .:? "AuthenticationProtocol")
      )

instance Hashable RadiusSettings

instance NFData RadiusSettings

instance ToJSON RadiusSettings where
  toJSON RadiusSettings' {..} =
    object
      ( catMaybes
          [ ("UseSameUsername" .=) <$> _rsUseSameUsername,
            ("DisplayLabel" .=) <$> _rsDisplayLabel,
            ("RadiusServers" .=) <$> _rsRadiusServers,
            ("RadiusRetries" .=) <$> _rsRadiusRetries,
            ("RadiusTimeout" .=) <$> _rsRadiusTimeout,
            ("SharedSecret" .=) <$> _rsSharedSecret,
            ("RadiusPort" .=) <$> _rsRadiusPort,
            ("AuthenticationProtocol" .=)
              <$> _rsAuthenticationProtocol
          ]
      )
