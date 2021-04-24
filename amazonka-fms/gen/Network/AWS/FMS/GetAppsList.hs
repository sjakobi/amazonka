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
-- Module      : Network.AWS.FMS.GetAppsList
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified AWS Firewall Manager applications list.
module Network.AWS.FMS.GetAppsList
  ( -- * Creating a Request
    getAppsList,
    GetAppsList,

    -- * Request Lenses
    galDefaultList,
    galListId,

    -- * Destructuring the Response
    getAppsListResponse,
    GetAppsListResponse,

    -- * Response Lenses
    galrrsAppsList,
    galrrsAppsListARN,
    galrrsResponseStatus,
  )
where

import Network.AWS.FMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAppsList' smart constructor.
data GetAppsList = GetAppsList'
  { _galDefaultList ::
      !(Maybe Bool),
    _galListId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAppsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'galDefaultList' - Specifies whether the list to retrieve is a default list owned by AWS Firewall Manager.
--
-- * 'galListId' - The ID of the AWS Firewall Manager applications list that you want the details for.
getAppsList ::
  -- | 'galListId'
  Text ->
  GetAppsList
getAppsList pListId_ =
  GetAppsList'
    { _galDefaultList = Nothing,
      _galListId = pListId_
    }

-- | Specifies whether the list to retrieve is a default list owned by AWS Firewall Manager.
galDefaultList :: Lens' GetAppsList (Maybe Bool)
galDefaultList = lens _galDefaultList (\s a -> s {_galDefaultList = a})

-- | The ID of the AWS Firewall Manager applications list that you want the details for.
galListId :: Lens' GetAppsList Text
galListId = lens _galListId (\s a -> s {_galListId = a})

instance AWSRequest GetAppsList where
  type Rs GetAppsList = GetAppsListResponse
  request = postJSON fms
  response =
    receiveJSON
      ( \s h x ->
          GetAppsListResponse'
            <$> (x .?> "AppsList")
            <*> (x .?> "AppsListArn")
            <*> (pure (fromEnum s))
      )

instance Hashable GetAppsList

instance NFData GetAppsList

instance ToHeaders GetAppsList where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSFMS_20180101.GetAppsList" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAppsList where
  toJSON GetAppsList' {..} =
    object
      ( catMaybes
          [ ("DefaultList" .=) <$> _galDefaultList,
            Just ("ListId" .= _galListId)
          ]
      )

instance ToPath GetAppsList where
  toPath = const "/"

instance ToQuery GetAppsList where
  toQuery = const mempty

-- | /See:/ 'getAppsListResponse' smart constructor.
data GetAppsListResponse = GetAppsListResponse'
  { _galrrsAppsList ::
      !(Maybe AppsListData),
    _galrrsAppsListARN ::
      !(Maybe Text),
    _galrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAppsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'galrrsAppsList' - Information about the specified AWS Firewall Manager applications list.
--
-- * 'galrrsAppsListARN' - The Amazon Resource Name (ARN) of the applications list.
--
-- * 'galrrsResponseStatus' - -- | The response status code.
getAppsListResponse ::
  -- | 'galrrsResponseStatus'
  Int ->
  GetAppsListResponse
getAppsListResponse pResponseStatus_ =
  GetAppsListResponse'
    { _galrrsAppsList = Nothing,
      _galrrsAppsListARN = Nothing,
      _galrrsResponseStatus = pResponseStatus_
    }

-- | Information about the specified AWS Firewall Manager applications list.
galrrsAppsList :: Lens' GetAppsListResponse (Maybe AppsListData)
galrrsAppsList = lens _galrrsAppsList (\s a -> s {_galrrsAppsList = a})

-- | The Amazon Resource Name (ARN) of the applications list.
galrrsAppsListARN :: Lens' GetAppsListResponse (Maybe Text)
galrrsAppsListARN = lens _galrrsAppsListARN (\s a -> s {_galrrsAppsListARN = a})

-- | -- | The response status code.
galrrsResponseStatus :: Lens' GetAppsListResponse Int
galrrsResponseStatus = lens _galrrsResponseStatus (\s a -> s {_galrrsResponseStatus = a})

instance NFData GetAppsListResponse
