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
-- Module      : Network.AWS.MediaConvert.ListJobTemplates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array
--
-- This operation returns paginated results.
module Network.AWS.MediaConvert.ListJobTemplates
  ( -- * Creating a Request
    listJobTemplates,
    ListJobTemplates,

    -- * Request Lenses
    ljtNextToken,
    ljtListBy,
    ljtMaxResults,
    ljtCategory,
    ljtOrder,

    -- * Destructuring the Response
    listJobTemplatesResponse,
    ListJobTemplatesResponse,

    -- * Response Lenses
    ljtrrsJobTemplates,
    ljtrrsNextToken,
    ljtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listJobTemplates' smart constructor.
data ListJobTemplates = ListJobTemplates'
  { _ljtNextToken ::
      !(Maybe Text),
    _ljtListBy ::
      !(Maybe JobTemplateListBy),
    _ljtMaxResults :: !(Maybe Nat),
    _ljtCategory :: !(Maybe Text),
    _ljtOrder :: !(Maybe Order)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobTemplates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljtNextToken' - Use this string, provided with the response to a previous request, to request the next batch of job templates.
--
-- * 'ljtListBy' - Optional. When you request a list of job templates, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
--
-- * 'ljtMaxResults' - Optional. Number of job templates, up to twenty, that will be returned at one time.
--
-- * 'ljtCategory' - Optionally, specify a job template category to limit responses to only job templates from that category.
--
-- * 'ljtOrder' - Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
listJobTemplates ::
  ListJobTemplates
listJobTemplates =
  ListJobTemplates'
    { _ljtNextToken = Nothing,
      _ljtListBy = Nothing,
      _ljtMaxResults = Nothing,
      _ljtCategory = Nothing,
      _ljtOrder = Nothing
    }

-- | Use this string, provided with the response to a previous request, to request the next batch of job templates.
ljtNextToken :: Lens' ListJobTemplates (Maybe Text)
ljtNextToken = lens _ljtNextToken (\s a -> s {_ljtNextToken = a})

-- | Optional. When you request a list of job templates, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
ljtListBy :: Lens' ListJobTemplates (Maybe JobTemplateListBy)
ljtListBy = lens _ljtListBy (\s a -> s {_ljtListBy = a})

-- | Optional. Number of job templates, up to twenty, that will be returned at one time.
ljtMaxResults :: Lens' ListJobTemplates (Maybe Natural)
ljtMaxResults = lens _ljtMaxResults (\s a -> s {_ljtMaxResults = a}) . mapping _Nat

-- | Optionally, specify a job template category to limit responses to only job templates from that category.
ljtCategory :: Lens' ListJobTemplates (Maybe Text)
ljtCategory = lens _ljtCategory (\s a -> s {_ljtCategory = a})

-- | Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
ljtOrder :: Lens' ListJobTemplates (Maybe Order)
ljtOrder = lens _ljtOrder (\s a -> s {_ljtOrder = a})

instance AWSPager ListJobTemplates where
  page rq rs
    | stop (rs ^. ljtrrsNextToken) = Nothing
    | stop (rs ^. ljtrrsJobTemplates) = Nothing
    | otherwise =
      Just $ rq & ljtNextToken .~ rs ^. ljtrrsNextToken

instance AWSRequest ListJobTemplates where
  type Rs ListJobTemplates = ListJobTemplatesResponse
  request = get mediaConvert
  response =
    receiveJSON
      ( \s h x ->
          ListJobTemplatesResponse'
            <$> (x .?> "jobTemplates" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListJobTemplates

instance NFData ListJobTemplates

instance ToHeaders ListJobTemplates where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListJobTemplates where
  toPath = const "/2017-08-29/jobTemplates"

instance ToQuery ListJobTemplates where
  toQuery ListJobTemplates' {..} =
    mconcat
      [ "nextToken" =: _ljtNextToken,
        "listBy" =: _ljtListBy,
        "maxResults" =: _ljtMaxResults,
        "category" =: _ljtCategory,
        "order" =: _ljtOrder
      ]

-- | /See:/ 'listJobTemplatesResponse' smart constructor.
data ListJobTemplatesResponse = ListJobTemplatesResponse'
  { _ljtrrsJobTemplates ::
      !( Maybe
           [JobTemplate]
       ),
    _ljtrrsNextToken ::
      !(Maybe Text),
    _ljtrrsResponseStatus ::
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

-- | Creates a value of 'ListJobTemplatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljtrrsJobTemplates' - List of Job templates.
--
-- * 'ljtrrsNextToken' - Use this string to request the next batch of job templates.
--
-- * 'ljtrrsResponseStatus' - -- | The response status code.
listJobTemplatesResponse ::
  -- | 'ljtrrsResponseStatus'
  Int ->
  ListJobTemplatesResponse
listJobTemplatesResponse pResponseStatus_ =
  ListJobTemplatesResponse'
    { _ljtrrsJobTemplates =
        Nothing,
      _ljtrrsNextToken = Nothing,
      _ljtrrsResponseStatus = pResponseStatus_
    }

-- | List of Job templates.
ljtrrsJobTemplates :: Lens' ListJobTemplatesResponse [JobTemplate]
ljtrrsJobTemplates = lens _ljtrrsJobTemplates (\s a -> s {_ljtrrsJobTemplates = a}) . _Default . _Coerce

-- | Use this string to request the next batch of job templates.
ljtrrsNextToken :: Lens' ListJobTemplatesResponse (Maybe Text)
ljtrrsNextToken = lens _ljtrrsNextToken (\s a -> s {_ljtrrsNextToken = a})

-- | -- | The response status code.
ljtrrsResponseStatus :: Lens' ListJobTemplatesResponse Int
ljtrrsResponseStatus = lens _ljtrrsResponseStatus (\s a -> s {_ljtrrsResponseStatus = a})

instance NFData ListJobTemplatesResponse
