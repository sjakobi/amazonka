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
-- Module      : Network.AWS.FMS.PutAppsList
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an AWS Firewall Manager applications list.
module Network.AWS.FMS.PutAppsList
  ( -- * Creating a Request
    putAppsList,
    PutAppsList,

    -- * Request Lenses
    palTagList,
    palAppsList,

    -- * Destructuring the Response
    putAppsListResponse,
    PutAppsListResponse,

    -- * Response Lenses
    palrrsAppsList,
    palrrsAppsListARN,
    palrrsResponseStatus,
  )
where

import Network.AWS.FMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putAppsList' smart constructor.
data PutAppsList = PutAppsList'
  { _palTagList ::
      !(Maybe [Tag]),
    _palAppsList :: !AppsListData
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutAppsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'palTagList' - The tags associated with the resource.
--
-- * 'palAppsList' - The details of the AWS Firewall Manager applications list to be created.
putAppsList ::
  -- | 'palAppsList'
  AppsListData ->
  PutAppsList
putAppsList pAppsList_ =
  PutAppsList'
    { _palTagList = Nothing,
      _palAppsList = pAppsList_
    }

-- | The tags associated with the resource.
palTagList :: Lens' PutAppsList [Tag]
palTagList = lens _palTagList (\s a -> s {_palTagList = a}) . _Default . _Coerce

-- | The details of the AWS Firewall Manager applications list to be created.
palAppsList :: Lens' PutAppsList AppsListData
palAppsList = lens _palAppsList (\s a -> s {_palAppsList = a})

instance AWSRequest PutAppsList where
  type Rs PutAppsList = PutAppsListResponse
  request = postJSON fms
  response =
    receiveJSON
      ( \s h x ->
          PutAppsListResponse'
            <$> (x .?> "AppsList")
            <*> (x .?> "AppsListArn")
            <*> (pure (fromEnum s))
      )

instance Hashable PutAppsList

instance NFData PutAppsList

instance ToHeaders PutAppsList where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSFMS_20180101.PutAppsList" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutAppsList where
  toJSON PutAppsList' {..} =
    object
      ( catMaybes
          [ ("TagList" .=) <$> _palTagList,
            Just ("AppsList" .= _palAppsList)
          ]
      )

instance ToPath PutAppsList where
  toPath = const "/"

instance ToQuery PutAppsList where
  toQuery = const mempty

-- | /See:/ 'putAppsListResponse' smart constructor.
data PutAppsListResponse = PutAppsListResponse'
  { _palrrsAppsList ::
      !(Maybe AppsListData),
    _palrrsAppsListARN ::
      !(Maybe Text),
    _palrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutAppsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'palrrsAppsList' - The details of the AWS Firewall Manager applications list.
--
-- * 'palrrsAppsListARN' - The Amazon Resource Name (ARN) of the applications list.
--
-- * 'palrrsResponseStatus' - -- | The response status code.
putAppsListResponse ::
  -- | 'palrrsResponseStatus'
  Int ->
  PutAppsListResponse
putAppsListResponse pResponseStatus_ =
  PutAppsListResponse'
    { _palrrsAppsList = Nothing,
      _palrrsAppsListARN = Nothing,
      _palrrsResponseStatus = pResponseStatus_
    }

-- | The details of the AWS Firewall Manager applications list.
palrrsAppsList :: Lens' PutAppsListResponse (Maybe AppsListData)
palrrsAppsList = lens _palrrsAppsList (\s a -> s {_palrrsAppsList = a})

-- | The Amazon Resource Name (ARN) of the applications list.
palrrsAppsListARN :: Lens' PutAppsListResponse (Maybe Text)
palrrsAppsListARN = lens _palrrsAppsListARN (\s a -> s {_palrrsAppsListARN = a})

-- | -- | The response status code.
palrrsResponseStatus :: Lens' PutAppsListResponse Int
palrrsResponseStatus = lens _palrrsResponseStatus (\s a -> s {_palrrsResponseStatus = a})

instance NFData PutAppsListResponse
