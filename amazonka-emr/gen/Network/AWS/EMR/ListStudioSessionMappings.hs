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
-- Module      : Network.AWS.EMR.ListStudioSessionMappings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all user or group session mappings for the Amazon EMR Studio specified by @StudioId@ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.EMR.ListStudioSessionMappings
  ( -- * Creating a Request
    listStudioSessionMappings,
    ListStudioSessionMappings,

    -- * Request Lenses
    lssmIdentityType,
    lssmStudioId,
    lssmMarker,

    -- * Destructuring the Response
    listStudioSessionMappingsResponse,
    ListStudioSessionMappingsResponse,

    -- * Response Lenses
    lssmrrsSessionMappings,
    lssmrrsMarker,
    lssmrrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listStudioSessionMappings' smart constructor.
data ListStudioSessionMappings = ListStudioSessionMappings'
  { _lssmIdentityType ::
      !( Maybe
           IdentityType
       ),
    _lssmStudioId ::
      !(Maybe Text),
    _lssmMarker ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListStudioSessionMappings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssmIdentityType' - Specifies whether to return session mappings for users or groups. If not specified, the results include session mapping details for both users and groups.
--
-- * 'lssmStudioId' - The ID of the Amazon EMR Studio.
--
-- * 'lssmMarker' - The pagination token that indicates the set of results to retrieve.
listStudioSessionMappings ::
  ListStudioSessionMappings
listStudioSessionMappings =
  ListStudioSessionMappings'
    { _lssmIdentityType =
        Nothing,
      _lssmStudioId = Nothing,
      _lssmMarker = Nothing
    }

-- | Specifies whether to return session mappings for users or groups. If not specified, the results include session mapping details for both users and groups.
lssmIdentityType :: Lens' ListStudioSessionMappings (Maybe IdentityType)
lssmIdentityType = lens _lssmIdentityType (\s a -> s {_lssmIdentityType = a})

-- | The ID of the Amazon EMR Studio.
lssmStudioId :: Lens' ListStudioSessionMappings (Maybe Text)
lssmStudioId = lens _lssmStudioId (\s a -> s {_lssmStudioId = a})

-- | The pagination token that indicates the set of results to retrieve.
lssmMarker :: Lens' ListStudioSessionMappings (Maybe Text)
lssmMarker = lens _lssmMarker (\s a -> s {_lssmMarker = a})

instance AWSPager ListStudioSessionMappings where
  page rq rs
    | stop (rs ^. lssmrrsMarker) = Nothing
    | stop (rs ^. lssmrrsSessionMappings) = Nothing
    | otherwise =
      Just $ rq & lssmMarker .~ rs ^. lssmrrsMarker

instance AWSRequest ListStudioSessionMappings where
  type
    Rs ListStudioSessionMappings =
      ListStudioSessionMappingsResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          ListStudioSessionMappingsResponse'
            <$> (x .?> "SessionMappings" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListStudioSessionMappings

instance NFData ListStudioSessionMappings

instance ToHeaders ListStudioSessionMappings where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ElasticMapReduce.ListStudioSessionMappings" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListStudioSessionMappings where
  toJSON ListStudioSessionMappings' {..} =
    object
      ( catMaybes
          [ ("IdentityType" .=) <$> _lssmIdentityType,
            ("StudioId" .=) <$> _lssmStudioId,
            ("Marker" .=) <$> _lssmMarker
          ]
      )

instance ToPath ListStudioSessionMappings where
  toPath = const "/"

instance ToQuery ListStudioSessionMappings where
  toQuery = const mempty

-- | /See:/ 'listStudioSessionMappingsResponse' smart constructor.
data ListStudioSessionMappingsResponse = ListStudioSessionMappingsResponse'
  { _lssmrrsSessionMappings ::
      !( Maybe
           [SessionMappingSummary]
       ),
    _lssmrrsMarker ::
      !( Maybe
           Text
       ),
    _lssmrrsResponseStatus ::
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

-- | Creates a value of 'ListStudioSessionMappingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssmrrsSessionMappings' - A list of session mapping summary objects. Each object includes session mapping details such as creation time, identity type (user or group), and Amazon EMR Studio ID.
--
-- * 'lssmrrsMarker' - The pagination token that indicates the next set of results to retrieve.
--
-- * 'lssmrrsResponseStatus' - -- | The response status code.
listStudioSessionMappingsResponse ::
  -- | 'lssmrrsResponseStatus'
  Int ->
  ListStudioSessionMappingsResponse
listStudioSessionMappingsResponse pResponseStatus_ =
  ListStudioSessionMappingsResponse'
    { _lssmrrsSessionMappings =
        Nothing,
      _lssmrrsMarker = Nothing,
      _lssmrrsResponseStatus =
        pResponseStatus_
    }

-- | A list of session mapping summary objects. Each object includes session mapping details such as creation time, identity type (user or group), and Amazon EMR Studio ID.
lssmrrsSessionMappings :: Lens' ListStudioSessionMappingsResponse [SessionMappingSummary]
lssmrrsSessionMappings = lens _lssmrrsSessionMappings (\s a -> s {_lssmrrsSessionMappings = a}) . _Default . _Coerce

-- | The pagination token that indicates the next set of results to retrieve.
lssmrrsMarker :: Lens' ListStudioSessionMappingsResponse (Maybe Text)
lssmrrsMarker = lens _lssmrrsMarker (\s a -> s {_lssmrrsMarker = a})

-- | -- | The response status code.
lssmrrsResponseStatus :: Lens' ListStudioSessionMappingsResponse Int
lssmrrsResponseStatus = lens _lssmrrsResponseStatus (\s a -> s {_lssmrrsResponseStatus = a})

instance NFData ListStudioSessionMappingsResponse
