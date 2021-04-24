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
-- Module      : Network.AWS.Glue.GetMLTransforms
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a sortable, filterable list of existing AWS Glue machine learning transforms. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by AWS Glue, and you can retrieve their metadata by calling @GetMLTransforms@ .
module Network.AWS.Glue.GetMLTransforms
  ( -- * Creating a Request
    getMLTransforms,
    GetMLTransforms,

    -- * Request Lenses
    gmltNextToken,
    gmltMaxResults,
    gmltFilter,
    gmltSort,

    -- * Destructuring the Response
    getMLTransformsResponse,
    GetMLTransformsResponse,

    -- * Response Lenses
    gmltrrsNextToken,
    gmltrrsResponseStatus,
    gmltrrsTransforms,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getMLTransforms' smart constructor.
data GetMLTransforms = GetMLTransforms'
  { _gmltNextToken ::
      !(Maybe Text),
    _gmltMaxResults :: !(Maybe Nat),
    _gmltFilter ::
      !(Maybe TransformFilterCriteria),
    _gmltSort ::
      !(Maybe TransformSortCriteria)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetMLTransforms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmltNextToken' - A paginated token to offset the results.
--
-- * 'gmltMaxResults' - The maximum number of results to return.
--
-- * 'gmltFilter' - The filter transformation criteria.
--
-- * 'gmltSort' - The sorting criteria.
getMLTransforms ::
  GetMLTransforms
getMLTransforms =
  GetMLTransforms'
    { _gmltNextToken = Nothing,
      _gmltMaxResults = Nothing,
      _gmltFilter = Nothing,
      _gmltSort = Nothing
    }

-- | A paginated token to offset the results.
gmltNextToken :: Lens' GetMLTransforms (Maybe Text)
gmltNextToken = lens _gmltNextToken (\s a -> s {_gmltNextToken = a})

-- | The maximum number of results to return.
gmltMaxResults :: Lens' GetMLTransforms (Maybe Natural)
gmltMaxResults = lens _gmltMaxResults (\s a -> s {_gmltMaxResults = a}) . mapping _Nat

-- | The filter transformation criteria.
gmltFilter :: Lens' GetMLTransforms (Maybe TransformFilterCriteria)
gmltFilter = lens _gmltFilter (\s a -> s {_gmltFilter = a})

-- | The sorting criteria.
gmltSort :: Lens' GetMLTransforms (Maybe TransformSortCriteria)
gmltSort = lens _gmltSort (\s a -> s {_gmltSort = a})

instance AWSRequest GetMLTransforms where
  type Rs GetMLTransforms = GetMLTransformsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetMLTransformsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "Transforms" .!@ mempty)
      )

instance Hashable GetMLTransforms

instance NFData GetMLTransforms

instance ToHeaders GetMLTransforms where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetMLTransforms" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMLTransforms where
  toJSON GetMLTransforms' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gmltNextToken,
            ("MaxResults" .=) <$> _gmltMaxResults,
            ("Filter" .=) <$> _gmltFilter,
            ("Sort" .=) <$> _gmltSort
          ]
      )

instance ToPath GetMLTransforms where
  toPath = const "/"

instance ToQuery GetMLTransforms where
  toQuery = const mempty

-- | /See:/ 'getMLTransformsResponse' smart constructor.
data GetMLTransformsResponse = GetMLTransformsResponse'
  { _gmltrrsNextToken ::
      !(Maybe Text),
    _gmltrrsResponseStatus ::
      !Int,
    _gmltrrsTransforms ::
      ![MLTransform]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetMLTransformsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmltrrsNextToken' - A pagination token, if more results are available.
--
-- * 'gmltrrsResponseStatus' - -- | The response status code.
--
-- * 'gmltrrsTransforms' - A list of machine learning transforms.
getMLTransformsResponse ::
  -- | 'gmltrrsResponseStatus'
  Int ->
  GetMLTransformsResponse
getMLTransformsResponse pResponseStatus_ =
  GetMLTransformsResponse'
    { _gmltrrsNextToken =
        Nothing,
      _gmltrrsResponseStatus = pResponseStatus_,
      _gmltrrsTransforms = mempty
    }

-- | A pagination token, if more results are available.
gmltrrsNextToken :: Lens' GetMLTransformsResponse (Maybe Text)
gmltrrsNextToken = lens _gmltrrsNextToken (\s a -> s {_gmltrrsNextToken = a})

-- | -- | The response status code.
gmltrrsResponseStatus :: Lens' GetMLTransformsResponse Int
gmltrrsResponseStatus = lens _gmltrrsResponseStatus (\s a -> s {_gmltrrsResponseStatus = a})

-- | A list of machine learning transforms.
gmltrrsTransforms :: Lens' GetMLTransformsResponse [MLTransform]
gmltrrsTransforms = lens _gmltrrsTransforms (\s a -> s {_gmltrrsTransforms = a}) . _Coerce

instance NFData GetMLTransformsResponse
