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
-- Module      : Network.AWS.SMS.UpdateApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified application.
module Network.AWS.SMS.UpdateApp
  ( -- * Creating a Request
    updateApp,
    UpdateApp,

    -- * Request Lenses
    uaAppId,
    uaRoleName,
    uaName,
    uaServerGroups,
    uaTags,
    uaDescription,

    -- * Destructuring the Response
    updateAppResponse,
    UpdateAppResponse,

    -- * Response Lenses
    uarrsAppSummary,
    uarrsServerGroups,
    uarrsTags,
    uarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'updateApp' smart constructor.
data UpdateApp = UpdateApp'
  { _uaAppId ::
      !(Maybe Text),
    _uaRoleName :: !(Maybe Text),
    _uaName :: !(Maybe Text),
    _uaServerGroups :: !(Maybe [ServerGroup]),
    _uaTags :: !(Maybe [Tag]),
    _uaDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateApp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaAppId' - The ID of the application.
--
-- * 'uaRoleName' - The name of the service role in the customer's account used by AWS SMS.
--
-- * 'uaName' - The new name of the application.
--
-- * 'uaServerGroups' - The server groups in the application to update.
--
-- * 'uaTags' - The tags to associate with the application.
--
-- * 'uaDescription' - The new description of the application.
updateApp ::
  UpdateApp
updateApp =
  UpdateApp'
    { _uaAppId = Nothing,
      _uaRoleName = Nothing,
      _uaName = Nothing,
      _uaServerGroups = Nothing,
      _uaTags = Nothing,
      _uaDescription = Nothing
    }

-- | The ID of the application.
uaAppId :: Lens' UpdateApp (Maybe Text)
uaAppId = lens _uaAppId (\s a -> s {_uaAppId = a})

-- | The name of the service role in the customer's account used by AWS SMS.
uaRoleName :: Lens' UpdateApp (Maybe Text)
uaRoleName = lens _uaRoleName (\s a -> s {_uaRoleName = a})

-- | The new name of the application.
uaName :: Lens' UpdateApp (Maybe Text)
uaName = lens _uaName (\s a -> s {_uaName = a})

-- | The server groups in the application to update.
uaServerGroups :: Lens' UpdateApp [ServerGroup]
uaServerGroups = lens _uaServerGroups (\s a -> s {_uaServerGroups = a}) . _Default . _Coerce

-- | The tags to associate with the application.
uaTags :: Lens' UpdateApp [Tag]
uaTags = lens _uaTags (\s a -> s {_uaTags = a}) . _Default . _Coerce

-- | The new description of the application.
uaDescription :: Lens' UpdateApp (Maybe Text)
uaDescription = lens _uaDescription (\s a -> s {_uaDescription = a})

instance AWSRequest UpdateApp where
  type Rs UpdateApp = UpdateAppResponse
  request = postJSON sms
  response =
    receiveJSON
      ( \s h x ->
          UpdateAppResponse'
            <$> (x .?> "appSummary")
            <*> (x .?> "serverGroups" .!@ mempty)
            <*> (x .?> "tags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateApp

instance NFData UpdateApp

instance ToHeaders UpdateApp where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.UpdateApp" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateApp where
  toJSON UpdateApp' {..} =
    object
      ( catMaybes
          [ ("appId" .=) <$> _uaAppId,
            ("roleName" .=) <$> _uaRoleName,
            ("name" .=) <$> _uaName,
            ("serverGroups" .=) <$> _uaServerGroups,
            ("tags" .=) <$> _uaTags,
            ("description" .=) <$> _uaDescription
          ]
      )

instance ToPath UpdateApp where
  toPath = const "/"

instance ToQuery UpdateApp where
  toQuery = const mempty

-- | /See:/ 'updateAppResponse' smart constructor.
data UpdateAppResponse = UpdateAppResponse'
  { _uarrsAppSummary ::
      !(Maybe AppSummary),
    _uarrsServerGroups ::
      !(Maybe [ServerGroup]),
    _uarrsTags :: !(Maybe [Tag]),
    _uarrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateAppResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uarrsAppSummary' - A summary description of the application.
--
-- * 'uarrsServerGroups' - The updated server groups in the application.
--
-- * 'uarrsTags' - The tags associated with the application.
--
-- * 'uarrsResponseStatus' - -- | The response status code.
updateAppResponse ::
  -- | 'uarrsResponseStatus'
  Int ->
  UpdateAppResponse
updateAppResponse pResponseStatus_ =
  UpdateAppResponse'
    { _uarrsAppSummary = Nothing,
      _uarrsServerGroups = Nothing,
      _uarrsTags = Nothing,
      _uarrsResponseStatus = pResponseStatus_
    }

-- | A summary description of the application.
uarrsAppSummary :: Lens' UpdateAppResponse (Maybe AppSummary)
uarrsAppSummary = lens _uarrsAppSummary (\s a -> s {_uarrsAppSummary = a})

-- | The updated server groups in the application.
uarrsServerGroups :: Lens' UpdateAppResponse [ServerGroup]
uarrsServerGroups = lens _uarrsServerGroups (\s a -> s {_uarrsServerGroups = a}) . _Default . _Coerce

-- | The tags associated with the application.
uarrsTags :: Lens' UpdateAppResponse [Tag]
uarrsTags = lens _uarrsTags (\s a -> s {_uarrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
uarrsResponseStatus :: Lens' UpdateAppResponse Int
uarrsResponseStatus = lens _uarrsResponseStatus (\s a -> s {_uarrsResponseStatus = a})

instance NFData UpdateAppResponse
