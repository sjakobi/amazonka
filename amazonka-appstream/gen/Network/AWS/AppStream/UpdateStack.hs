{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.UpdateStack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified fields for the specified stack.
module Network.AWS.AppStream.UpdateStack
  ( -- * Creating a Request
    updateStack,
    UpdateStack,

    -- * Request Lenses
    usAccessEndpoints,
    usUserSettings,
    usRedirectURL,
    usApplicationSettings,
    usStorageConnectors,
    usDescription,
    usEmbedHostDomains,
    usDeleteStorageConnectors,
    usDisplayName,
    usAttributesToDelete,
    usFeedbackURL,
    usName,

    -- * Destructuring the Response
    updateStackResponse,
    UpdateStackResponse,

    -- * Response Lenses
    usrrsStack,
    usrrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateStack' smart constructor.
data UpdateStack = UpdateStack'
  { _usAccessEndpoints ::
      !(Maybe (List1 AccessEndpoint)),
    _usUserSettings :: !(Maybe (List1 UserSetting)),
    _usRedirectURL :: !(Maybe Text),
    _usApplicationSettings ::
      !(Maybe ApplicationSettings),
    _usStorageConnectors ::
      !(Maybe [StorageConnector]),
    _usDescription :: !(Maybe Text),
    _usEmbedHostDomains :: !(Maybe (List1 Text)),
    _usDeleteStorageConnectors :: !(Maybe Bool),
    _usDisplayName :: !(Maybe Text),
    _usAttributesToDelete ::
      !(Maybe [StackAttribute]),
    _usFeedbackURL :: !(Maybe Text),
    _usName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateStack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usAccessEndpoints' - The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.
--
-- * 'usUserSettings' - The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.
--
-- * 'usRedirectURL' - The URL that users are redirected to after their streaming session ends.
--
-- * 'usApplicationSettings' - The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.
--
-- * 'usStorageConnectors' - The storage connectors to enable.
--
-- * 'usDescription' - The description to display.
--
-- * 'usEmbedHostDomains' - The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.
--
-- * 'usDeleteStorageConnectors' - Deletes the storage connectors currently enabled for the stack.
--
-- * 'usDisplayName' - The stack name to display.
--
-- * 'usAttributesToDelete' - The stack attributes to delete.
--
-- * 'usFeedbackURL' - The URL that users are redirected to after they choose the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.
--
-- * 'usName' - The name of the stack.
updateStack ::
  -- | 'usName'
  Text ->
  UpdateStack
updateStack pName_ =
  UpdateStack'
    { _usAccessEndpoints = Nothing,
      _usUserSettings = Nothing,
      _usRedirectURL = Nothing,
      _usApplicationSettings = Nothing,
      _usStorageConnectors = Nothing,
      _usDescription = Nothing,
      _usEmbedHostDomains = Nothing,
      _usDeleteStorageConnectors = Nothing,
      _usDisplayName = Nothing,
      _usAttributesToDelete = Nothing,
      _usFeedbackURL = Nothing,
      _usName = pName_
    }

-- | The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.
usAccessEndpoints :: Lens' UpdateStack (Maybe (NonEmpty AccessEndpoint))
usAccessEndpoints = lens _usAccessEndpoints (\s a -> s {_usAccessEndpoints = a}) . mapping _List1

-- | The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.
usUserSettings :: Lens' UpdateStack (Maybe (NonEmpty UserSetting))
usUserSettings = lens _usUserSettings (\s a -> s {_usUserSettings = a}) . mapping _List1

-- | The URL that users are redirected to after their streaming session ends.
usRedirectURL :: Lens' UpdateStack (Maybe Text)
usRedirectURL = lens _usRedirectURL (\s a -> s {_usRedirectURL = a})

-- | The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.
usApplicationSettings :: Lens' UpdateStack (Maybe ApplicationSettings)
usApplicationSettings = lens _usApplicationSettings (\s a -> s {_usApplicationSettings = a})

-- | The storage connectors to enable.
usStorageConnectors :: Lens' UpdateStack [StorageConnector]
usStorageConnectors = lens _usStorageConnectors (\s a -> s {_usStorageConnectors = a}) . _Default . _Coerce

-- | The description to display.
usDescription :: Lens' UpdateStack (Maybe Text)
usDescription = lens _usDescription (\s a -> s {_usDescription = a})

-- | The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.
usEmbedHostDomains :: Lens' UpdateStack (Maybe (NonEmpty Text))
usEmbedHostDomains = lens _usEmbedHostDomains (\s a -> s {_usEmbedHostDomains = a}) . mapping _List1

-- | Deletes the storage connectors currently enabled for the stack.
usDeleteStorageConnectors :: Lens' UpdateStack (Maybe Bool)
usDeleteStorageConnectors = lens _usDeleteStorageConnectors (\s a -> s {_usDeleteStorageConnectors = a})

-- | The stack name to display.
usDisplayName :: Lens' UpdateStack (Maybe Text)
usDisplayName = lens _usDisplayName (\s a -> s {_usDisplayName = a})

-- | The stack attributes to delete.
usAttributesToDelete :: Lens' UpdateStack [StackAttribute]
usAttributesToDelete = lens _usAttributesToDelete (\s a -> s {_usAttributesToDelete = a}) . _Default . _Coerce

-- | The URL that users are redirected to after they choose the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.
usFeedbackURL :: Lens' UpdateStack (Maybe Text)
usFeedbackURL = lens _usFeedbackURL (\s a -> s {_usFeedbackURL = a})

-- | The name of the stack.
usName :: Lens' UpdateStack Text
usName = lens _usName (\s a -> s {_usName = a})

instance AWSRequest UpdateStack where
  type Rs UpdateStack = UpdateStackResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          UpdateStackResponse'
            <$> (x .?> "Stack") <*> (pure (fromEnum s))
      )

instance Hashable UpdateStack

instance NFData UpdateStack

instance ToHeaders UpdateStack where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.UpdateStack" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateStack where
  toJSON UpdateStack' {..} =
    object
      ( catMaybes
          [ ("AccessEndpoints" .=) <$> _usAccessEndpoints,
            ("UserSettings" .=) <$> _usUserSettings,
            ("RedirectURL" .=) <$> _usRedirectURL,
            ("ApplicationSettings" .=)
              <$> _usApplicationSettings,
            ("StorageConnectors" .=) <$> _usStorageConnectors,
            ("Description" .=) <$> _usDescription,
            ("EmbedHostDomains" .=) <$> _usEmbedHostDomains,
            ("DeleteStorageConnectors" .=)
              <$> _usDeleteStorageConnectors,
            ("DisplayName" .=) <$> _usDisplayName,
            ("AttributesToDelete" .=) <$> _usAttributesToDelete,
            ("FeedbackURL" .=) <$> _usFeedbackURL,
            Just ("Name" .= _usName)
          ]
      )

instance ToPath UpdateStack where
  toPath = const "/"

instance ToQuery UpdateStack where
  toQuery = const mempty

-- | /See:/ 'updateStackResponse' smart constructor.
data UpdateStackResponse = UpdateStackResponse'
  { _usrrsStack ::
      !(Maybe Stack),
    _usrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateStackResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrrsStack' - Information about the stack.
--
-- * 'usrrsResponseStatus' - -- | The response status code.
updateStackResponse ::
  -- | 'usrrsResponseStatus'
  Int ->
  UpdateStackResponse
updateStackResponse pResponseStatus_ =
  UpdateStackResponse'
    { _usrrsStack = Nothing,
      _usrrsResponseStatus = pResponseStatus_
    }

-- | Information about the stack.
usrrsStack :: Lens' UpdateStackResponse (Maybe Stack)
usrrsStack = lens _usrrsStack (\s a -> s {_usrrsStack = a})

-- | -- | The response status code.
usrrsResponseStatus :: Lens' UpdateStackResponse Int
usrrsResponseStatus = lens _usrrsResponseStatus (\s a -> s {_usrrsResponseStatus = a})

instance NFData UpdateStackResponse
