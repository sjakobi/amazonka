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
-- Module      : Network.AWS.ServiceCatalog.ListResourcesForTagOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the resources associated with the specified TagOption.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListResourcesForTagOption
  ( -- * Creating a Request
    listResourcesForTagOption,
    ListResourcesForTagOption,

    -- * Request Lenses
    lrftoPageSize,
    lrftoPageToken,
    lrftoResourceType,
    lrftoTagOptionId,

    -- * Destructuring the Response
    listResourcesForTagOptionResponse,
    ListResourcesForTagOptionResponse,

    -- * Response Lenses
    lrftorrsPageToken,
    lrftorrsResourceDetails,
    lrftorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listResourcesForTagOption' smart constructor.
data ListResourcesForTagOption = ListResourcesForTagOption'
  { _lrftoPageSize ::
      !(Maybe Nat),
    _lrftoPageToken ::
      !(Maybe Text),
    _lrftoResourceType ::
      !(Maybe Text),
    _lrftoTagOptionId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListResourcesForTagOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrftoPageSize' - The maximum number of items to return with this call.
--
-- * 'lrftoPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lrftoResourceType' - The resource type.     * @Portfolio@      * @Product@
--
-- * 'lrftoTagOptionId' - The TagOption identifier.
listResourcesForTagOption ::
  -- | 'lrftoTagOptionId'
  Text ->
  ListResourcesForTagOption
listResourcesForTagOption pTagOptionId_ =
  ListResourcesForTagOption'
    { _lrftoPageSize =
        Nothing,
      _lrftoPageToken = Nothing,
      _lrftoResourceType = Nothing,
      _lrftoTagOptionId = pTagOptionId_
    }

-- | The maximum number of items to return with this call.
lrftoPageSize :: Lens' ListResourcesForTagOption (Maybe Natural)
lrftoPageSize = lens _lrftoPageSize (\s a -> s {_lrftoPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lrftoPageToken :: Lens' ListResourcesForTagOption (Maybe Text)
lrftoPageToken = lens _lrftoPageToken (\s a -> s {_lrftoPageToken = a})

-- | The resource type.     * @Portfolio@      * @Product@
lrftoResourceType :: Lens' ListResourcesForTagOption (Maybe Text)
lrftoResourceType = lens _lrftoResourceType (\s a -> s {_lrftoResourceType = a})

-- | The TagOption identifier.
lrftoTagOptionId :: Lens' ListResourcesForTagOption Text
lrftoTagOptionId = lens _lrftoTagOptionId (\s a -> s {_lrftoTagOptionId = a})

instance AWSPager ListResourcesForTagOption where
  page rq rs
    | stop (rs ^. lrftorrsPageToken) = Nothing
    | stop (rs ^. lrftorrsResourceDetails) = Nothing
    | otherwise =
      Just $ rq & lrftoPageToken .~ rs ^. lrftorrsPageToken

instance AWSRequest ListResourcesForTagOption where
  type
    Rs ListResourcesForTagOption =
      ListResourcesForTagOptionResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListResourcesForTagOptionResponse'
            <$> (x .?> "PageToken")
            <*> (x .?> "ResourceDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListResourcesForTagOption

instance NFData ListResourcesForTagOption

instance ToHeaders ListResourcesForTagOption where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListResourcesForTagOption" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListResourcesForTagOption where
  toJSON ListResourcesForTagOption' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _lrftoPageSize,
            ("PageToken" .=) <$> _lrftoPageToken,
            ("ResourceType" .=) <$> _lrftoResourceType,
            Just ("TagOptionId" .= _lrftoTagOptionId)
          ]
      )

instance ToPath ListResourcesForTagOption where
  toPath = const "/"

instance ToQuery ListResourcesForTagOption where
  toQuery = const mempty

-- | /See:/ 'listResourcesForTagOptionResponse' smart constructor.
data ListResourcesForTagOptionResponse = ListResourcesForTagOptionResponse'
  { _lrftorrsPageToken ::
      !( Maybe
           Text
       ),
    _lrftorrsResourceDetails ::
      !( Maybe
           [ResourceDetail]
       ),
    _lrftorrsResponseStatus ::
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

-- | Creates a value of 'ListResourcesForTagOptionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrftorrsPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lrftorrsResourceDetails' - Information about the resources.
--
-- * 'lrftorrsResponseStatus' - -- | The response status code.
listResourcesForTagOptionResponse ::
  -- | 'lrftorrsResponseStatus'
  Int ->
  ListResourcesForTagOptionResponse
listResourcesForTagOptionResponse pResponseStatus_ =
  ListResourcesForTagOptionResponse'
    { _lrftorrsPageToken =
        Nothing,
      _lrftorrsResourceDetails = Nothing,
      _lrftorrsResponseStatus =
        pResponseStatus_
    }

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lrftorrsPageToken :: Lens' ListResourcesForTagOptionResponse (Maybe Text)
lrftorrsPageToken = lens _lrftorrsPageToken (\s a -> s {_lrftorrsPageToken = a})

-- | Information about the resources.
lrftorrsResourceDetails :: Lens' ListResourcesForTagOptionResponse [ResourceDetail]
lrftorrsResourceDetails = lens _lrftorrsResourceDetails (\s a -> s {_lrftorrsResourceDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
lrftorrsResponseStatus :: Lens' ListResourcesForTagOptionResponse Int
lrftorrsResponseStatus = lens _lrftorrsResponseStatus (\s a -> s {_lrftorrsResponseStatus = a})

instance NFData ListResourcesForTagOptionResponse
