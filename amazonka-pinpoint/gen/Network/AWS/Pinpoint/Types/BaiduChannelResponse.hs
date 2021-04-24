{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.BaiduChannelResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.BaiduChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about the status and settings of the Baidu (Baidu Cloud Push) channel for an application.
--
--
--
-- /See:/ 'baiduChannelResponse' smart constructor.
data BaiduChannelResponse = BaiduChannelResponse'
  { _bLastModifiedDate ::
      !(Maybe Text),
    _bApplicationId ::
      !(Maybe Text),
    _bHasCredential ::
      !(Maybe Bool),
    _bId :: !(Maybe Text),
    _bCreationDate ::
      !(Maybe Text),
    _bEnabled :: !(Maybe Bool),
    _bVersion :: !(Maybe Int),
    _bIsArchived :: !(Maybe Bool),
    _bLastModifiedBy ::
      !(Maybe Text),
    _bCredential :: !Text,
    _bPlatform :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BaiduChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bLastModifiedDate' - The date and time when the Baidu channel was last modified.
--
-- * 'bApplicationId' - The unique identifier for the application that the Baidu channel applies to.
--
-- * 'bHasCredential' - (Not used) This property is retained only for backward compatibility.
--
-- * 'bId' - (Deprecated) An identifier for the Baidu channel. This property is retained only for backward compatibility.
--
-- * 'bCreationDate' - The date and time when the Baidu channel was enabled.
--
-- * 'bEnabled' - Specifies whether the Baidu channel is enabled for the application.
--
-- * 'bVersion' - The current version of the Baidu channel.
--
-- * 'bIsArchived' - Specifies whether the Baidu channel is archived.
--
-- * 'bLastModifiedBy' - The user who last modified the Baidu channel.
--
-- * 'bCredential' - The API key that you received from the Baidu Cloud Push service to communicate with the service.
--
-- * 'bPlatform' - The type of messaging or notification platform for the channel. For the Baidu channel, this value is BAIDU.
baiduChannelResponse ::
  -- | 'bCredential'
  Text ->
  -- | 'bPlatform'
  Text ->
  BaiduChannelResponse
baiduChannelResponse pCredential_ pPlatform_ =
  BaiduChannelResponse'
    { _bLastModifiedDate = Nothing,
      _bApplicationId = Nothing,
      _bHasCredential = Nothing,
      _bId = Nothing,
      _bCreationDate = Nothing,
      _bEnabled = Nothing,
      _bVersion = Nothing,
      _bIsArchived = Nothing,
      _bLastModifiedBy = Nothing,
      _bCredential = pCredential_,
      _bPlatform = pPlatform_
    }

-- | The date and time when the Baidu channel was last modified.
bLastModifiedDate :: Lens' BaiduChannelResponse (Maybe Text)
bLastModifiedDate = lens _bLastModifiedDate (\s a -> s {_bLastModifiedDate = a})

-- | The unique identifier for the application that the Baidu channel applies to.
bApplicationId :: Lens' BaiduChannelResponse (Maybe Text)
bApplicationId = lens _bApplicationId (\s a -> s {_bApplicationId = a})

-- | (Not used) This property is retained only for backward compatibility.
bHasCredential :: Lens' BaiduChannelResponse (Maybe Bool)
bHasCredential = lens _bHasCredential (\s a -> s {_bHasCredential = a})

-- | (Deprecated) An identifier for the Baidu channel. This property is retained only for backward compatibility.
bId :: Lens' BaiduChannelResponse (Maybe Text)
bId = lens _bId (\s a -> s {_bId = a})

-- | The date and time when the Baidu channel was enabled.
bCreationDate :: Lens' BaiduChannelResponse (Maybe Text)
bCreationDate = lens _bCreationDate (\s a -> s {_bCreationDate = a})

-- | Specifies whether the Baidu channel is enabled for the application.
bEnabled :: Lens' BaiduChannelResponse (Maybe Bool)
bEnabled = lens _bEnabled (\s a -> s {_bEnabled = a})

-- | The current version of the Baidu channel.
bVersion :: Lens' BaiduChannelResponse (Maybe Int)
bVersion = lens _bVersion (\s a -> s {_bVersion = a})

-- | Specifies whether the Baidu channel is archived.
bIsArchived :: Lens' BaiduChannelResponse (Maybe Bool)
bIsArchived = lens _bIsArchived (\s a -> s {_bIsArchived = a})

-- | The user who last modified the Baidu channel.
bLastModifiedBy :: Lens' BaiduChannelResponse (Maybe Text)
bLastModifiedBy = lens _bLastModifiedBy (\s a -> s {_bLastModifiedBy = a})

-- | The API key that you received from the Baidu Cloud Push service to communicate with the service.
bCredential :: Lens' BaiduChannelResponse Text
bCredential = lens _bCredential (\s a -> s {_bCredential = a})

-- | The type of messaging or notification platform for the channel. For the Baidu channel, this value is BAIDU.
bPlatform :: Lens' BaiduChannelResponse Text
bPlatform = lens _bPlatform (\s a -> s {_bPlatform = a})

instance FromJSON BaiduChannelResponse where
  parseJSON =
    withObject
      "BaiduChannelResponse"
      ( \x ->
          BaiduChannelResponse'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "ApplicationId")
            <*> (x .:? "HasCredential")
            <*> (x .:? "Id")
            <*> (x .:? "CreationDate")
            <*> (x .:? "Enabled")
            <*> (x .:? "Version")
            <*> (x .:? "IsArchived")
            <*> (x .:? "LastModifiedBy")
            <*> (x .: "Credential")
            <*> (x .: "Platform")
      )

instance Hashable BaiduChannelResponse

instance NFData BaiduChannelResponse
