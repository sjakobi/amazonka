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
-- Module      : Network.AWS.DeviceFarm.ListNetworkProfiles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of available network profiles.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListNetworkProfiles
  ( -- * Creating a Request
    listNetworkProfiles,
    ListNetworkProfiles,

    -- * Request Lenses
    lnpNextToken,
    lnpType,
    lnpArn,

    -- * Destructuring the Response
    listNetworkProfilesResponse,
    ListNetworkProfilesResponse,

    -- * Response Lenses
    lnprrsNextToken,
    lnprrsNetworkProfiles,
    lnprrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listNetworkProfiles' smart constructor.
data ListNetworkProfiles = ListNetworkProfiles'
  { _lnpNextToken ::
      !(Maybe Text),
    _lnpType ::
      !(Maybe NetworkProfileType),
    _lnpArn :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListNetworkProfiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnpNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lnpType' - The type of network profile to return information about. Valid values are listed here.
--
-- * 'lnpArn' - The Amazon Resource Name (ARN) of the project for which you want to list network profiles.
listNetworkProfiles ::
  -- | 'lnpArn'
  Text ->
  ListNetworkProfiles
listNetworkProfiles pArn_ =
  ListNetworkProfiles'
    { _lnpNextToken = Nothing,
      _lnpType = Nothing,
      _lnpArn = pArn_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lnpNextToken :: Lens' ListNetworkProfiles (Maybe Text)
lnpNextToken = lens _lnpNextToken (\s a -> s {_lnpNextToken = a})

-- | The type of network profile to return information about. Valid values are listed here.
lnpType :: Lens' ListNetworkProfiles (Maybe NetworkProfileType)
lnpType = lens _lnpType (\s a -> s {_lnpType = a})

-- | The Amazon Resource Name (ARN) of the project for which you want to list network profiles.
lnpArn :: Lens' ListNetworkProfiles Text
lnpArn = lens _lnpArn (\s a -> s {_lnpArn = a})

instance AWSPager ListNetworkProfiles where
  page rq rs
    | stop (rs ^. lnprrsNextToken) = Nothing
    | stop (rs ^. lnprrsNetworkProfiles) = Nothing
    | otherwise =
      Just $ rq & lnpNextToken .~ rs ^. lnprrsNextToken

instance AWSRequest ListNetworkProfiles where
  type
    Rs ListNetworkProfiles =
      ListNetworkProfilesResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListNetworkProfilesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "networkProfiles" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListNetworkProfiles

instance NFData ListNetworkProfiles

instance ToHeaders ListNetworkProfiles where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.ListNetworkProfiles" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListNetworkProfiles where
  toJSON ListNetworkProfiles' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lnpNextToken,
            ("type" .=) <$> _lnpType,
            Just ("arn" .= _lnpArn)
          ]
      )

instance ToPath ListNetworkProfiles where
  toPath = const "/"

instance ToQuery ListNetworkProfiles where
  toQuery = const mempty

-- | /See:/ 'listNetworkProfilesResponse' smart constructor.
data ListNetworkProfilesResponse = ListNetworkProfilesResponse'
  { _lnprrsNextToken ::
      !(Maybe Text),
    _lnprrsNetworkProfiles ::
      !( Maybe
           [NetworkProfile]
       ),
    _lnprrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListNetworkProfilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnprrsNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lnprrsNetworkProfiles' - A list of the available network profiles.
--
-- * 'lnprrsResponseStatus' - -- | The response status code.
listNetworkProfilesResponse ::
  -- | 'lnprrsResponseStatus'
  Int ->
  ListNetworkProfilesResponse
listNetworkProfilesResponse pResponseStatus_ =
  ListNetworkProfilesResponse'
    { _lnprrsNextToken =
        Nothing,
      _lnprrsNetworkProfiles = Nothing,
      _lnprrsResponseStatus = pResponseStatus_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lnprrsNextToken :: Lens' ListNetworkProfilesResponse (Maybe Text)
lnprrsNextToken = lens _lnprrsNextToken (\s a -> s {_lnprrsNextToken = a})

-- | A list of the available network profiles.
lnprrsNetworkProfiles :: Lens' ListNetworkProfilesResponse [NetworkProfile]
lnprrsNetworkProfiles = lens _lnprrsNetworkProfiles (\s a -> s {_lnprrsNetworkProfiles = a}) . _Default . _Coerce

-- | -- | The response status code.
lnprrsResponseStatus :: Lens' ListNetworkProfilesResponse Int
lnprrsResponseStatus = lens _lnprrsResponseStatus (\s a -> s {_lnprrsResponseStatus = a})

instance NFData ListNetworkProfilesResponse
