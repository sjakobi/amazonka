{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.Stack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.Stack where

import Network.AWS.AppStream.Types.AccessEndpoint
import Network.AWS.AppStream.Types.ApplicationSettingsResponse
import Network.AWS.AppStream.Types.StackError
import Network.AWS.AppStream.Types.StorageConnector
import Network.AWS.AppStream.Types.UserSetting
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a stack.
--
--
--
-- /See:/ 'stack' smart constructor.
data Stack = Stack'
  { _sAccessEndpoints ::
      !(Maybe (List1 AccessEndpoint)),
    _sUserSettings :: !(Maybe (List1 UserSetting)),
    _sRedirectURL :: !(Maybe Text),
    _sARN :: !(Maybe Text),
    _sCreatedTime :: !(Maybe POSIX),
    _sApplicationSettings ::
      !(Maybe ApplicationSettingsResponse),
    _sStorageConnectors :: !(Maybe [StorageConnector]),
    _sDescription :: !(Maybe Text),
    _sEmbedHostDomains :: !(Maybe (List1 Text)),
    _sDisplayName :: !(Maybe Text),
    _sStackErrors :: !(Maybe [StackError]),
    _sFeedbackURL :: !(Maybe Text),
    _sName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Stack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sAccessEndpoints' - The list of virtual private cloud (VPC) interface endpoint objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.
--
-- * 'sUserSettings' - The actions that are enabled or disabled for users during their streaming sessions. By default these actions are enabled.
--
-- * 'sRedirectURL' - The URL that users are redirected to after their streaming session ends.
--
-- * 'sARN' - The ARN of the stack.
--
-- * 'sCreatedTime' - The time the stack was created.
--
-- * 'sApplicationSettings' - The persistent application settings for users of the stack.
--
-- * 'sStorageConnectors' - The storage connectors to enable.
--
-- * 'sDescription' - The description to display.
--
-- * 'sEmbedHostDomains' - The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.
--
-- * 'sDisplayName' - The stack name to display.
--
-- * 'sStackErrors' - The errors for the stack.
--
-- * 'sFeedbackURL' - The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.
--
-- * 'sName' - The name of the stack.
stack ::
  -- | 'sName'
  Text ->
  Stack
stack pName_ =
  Stack'
    { _sAccessEndpoints = Nothing,
      _sUserSettings = Nothing,
      _sRedirectURL = Nothing,
      _sARN = Nothing,
      _sCreatedTime = Nothing,
      _sApplicationSettings = Nothing,
      _sStorageConnectors = Nothing,
      _sDescription = Nothing,
      _sEmbedHostDomains = Nothing,
      _sDisplayName = Nothing,
      _sStackErrors = Nothing,
      _sFeedbackURL = Nothing,
      _sName = pName_
    }

-- | The list of virtual private cloud (VPC) interface endpoint objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.
sAccessEndpoints :: Lens' Stack (Maybe (NonEmpty AccessEndpoint))
sAccessEndpoints = lens _sAccessEndpoints (\s a -> s {_sAccessEndpoints = a}) . mapping _List1

-- | The actions that are enabled or disabled for users during their streaming sessions. By default these actions are enabled.
sUserSettings :: Lens' Stack (Maybe (NonEmpty UserSetting))
sUserSettings = lens _sUserSettings (\s a -> s {_sUserSettings = a}) . mapping _List1

-- | The URL that users are redirected to after their streaming session ends.
sRedirectURL :: Lens' Stack (Maybe Text)
sRedirectURL = lens _sRedirectURL (\s a -> s {_sRedirectURL = a})

-- | The ARN of the stack.
sARN :: Lens' Stack (Maybe Text)
sARN = lens _sARN (\s a -> s {_sARN = a})

-- | The time the stack was created.
sCreatedTime :: Lens' Stack (Maybe UTCTime)
sCreatedTime = lens _sCreatedTime (\s a -> s {_sCreatedTime = a}) . mapping _Time

-- | The persistent application settings for users of the stack.
sApplicationSettings :: Lens' Stack (Maybe ApplicationSettingsResponse)
sApplicationSettings = lens _sApplicationSettings (\s a -> s {_sApplicationSettings = a})

-- | The storage connectors to enable.
sStorageConnectors :: Lens' Stack [StorageConnector]
sStorageConnectors = lens _sStorageConnectors (\s a -> s {_sStorageConnectors = a}) . _Default . _Coerce

-- | The description to display.
sDescription :: Lens' Stack (Maybe Text)
sDescription = lens _sDescription (\s a -> s {_sDescription = a})

-- | The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.
sEmbedHostDomains :: Lens' Stack (Maybe (NonEmpty Text))
sEmbedHostDomains = lens _sEmbedHostDomains (\s a -> s {_sEmbedHostDomains = a}) . mapping _List1

-- | The stack name to display.
sDisplayName :: Lens' Stack (Maybe Text)
sDisplayName = lens _sDisplayName (\s a -> s {_sDisplayName = a})

-- | The errors for the stack.
sStackErrors :: Lens' Stack [StackError]
sStackErrors = lens _sStackErrors (\s a -> s {_sStackErrors = a}) . _Default . _Coerce

-- | The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.
sFeedbackURL :: Lens' Stack (Maybe Text)
sFeedbackURL = lens _sFeedbackURL (\s a -> s {_sFeedbackURL = a})

-- | The name of the stack.
sName :: Lens' Stack Text
sName = lens _sName (\s a -> s {_sName = a})

instance FromJSON Stack where
  parseJSON =
    withObject
      "Stack"
      ( \x ->
          Stack'
            <$> (x .:? "AccessEndpoints")
            <*> (x .:? "UserSettings")
            <*> (x .:? "RedirectURL")
            <*> (x .:? "Arn")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "ApplicationSettings")
            <*> (x .:? "StorageConnectors" .!= mempty)
            <*> (x .:? "Description")
            <*> (x .:? "EmbedHostDomains")
            <*> (x .:? "DisplayName")
            <*> (x .:? "StackErrors" .!= mempty)
            <*> (x .:? "FeedbackURL")
            <*> (x .: "Name")
      )

instance Hashable Stack

instance NFData Stack
