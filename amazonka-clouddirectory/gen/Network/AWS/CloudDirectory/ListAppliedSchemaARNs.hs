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
-- Module      : Network.AWS.CloudDirectory.ListAppliedSchemaARNs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists schema major versions applied to a directory. If @SchemaArn@ is provided, lists the minor version.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListAppliedSchemaARNs
  ( -- * Creating a Request
    listAppliedSchemaARNs,
    ListAppliedSchemaARNs,

    -- * Request Lenses
    lasaSchemaARN,
    lasaNextToken,
    lasaMaxResults,
    lasaDirectoryARN,

    -- * Destructuring the Response
    listAppliedSchemaARNsResponse,
    ListAppliedSchemaARNsResponse,

    -- * Response Lenses
    lasarrsSchemaARNs,
    lasarrsNextToken,
    lasarrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAppliedSchemaARNs' smart constructor.
data ListAppliedSchemaARNs = ListAppliedSchemaARNs'
  { _lasaSchemaARN ::
      !(Maybe Text),
    _lasaNextToken ::
      !(Maybe Text),
    _lasaMaxResults ::
      !(Maybe Nat),
    _lasaDirectoryARN :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAppliedSchemaARNs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lasaSchemaARN' - The response for @ListAppliedSchemaArns@ when this parameter is used will list all minor version ARNs for a major version.
--
-- * 'lasaNextToken' - The pagination token.
--
-- * 'lasaMaxResults' - The maximum number of results to retrieve.
--
-- * 'lasaDirectoryARN' - The ARN of the directory you are listing.
listAppliedSchemaARNs ::
  -- | 'lasaDirectoryARN'
  Text ->
  ListAppliedSchemaARNs
listAppliedSchemaARNs pDirectoryARN_ =
  ListAppliedSchemaARNs'
    { _lasaSchemaARN = Nothing,
      _lasaNextToken = Nothing,
      _lasaMaxResults = Nothing,
      _lasaDirectoryARN = pDirectoryARN_
    }

-- | The response for @ListAppliedSchemaArns@ when this parameter is used will list all minor version ARNs for a major version.
lasaSchemaARN :: Lens' ListAppliedSchemaARNs (Maybe Text)
lasaSchemaARN = lens _lasaSchemaARN (\s a -> s {_lasaSchemaARN = a})

-- | The pagination token.
lasaNextToken :: Lens' ListAppliedSchemaARNs (Maybe Text)
lasaNextToken = lens _lasaNextToken (\s a -> s {_lasaNextToken = a})

-- | The maximum number of results to retrieve.
lasaMaxResults :: Lens' ListAppliedSchemaARNs (Maybe Natural)
lasaMaxResults = lens _lasaMaxResults (\s a -> s {_lasaMaxResults = a}) . mapping _Nat

-- | The ARN of the directory you are listing.
lasaDirectoryARN :: Lens' ListAppliedSchemaARNs Text
lasaDirectoryARN = lens _lasaDirectoryARN (\s a -> s {_lasaDirectoryARN = a})

instance AWSPager ListAppliedSchemaARNs where
  page rq rs
    | stop (rs ^. lasarrsNextToken) = Nothing
    | stop (rs ^. lasarrsSchemaARNs) = Nothing
    | otherwise =
      Just $ rq & lasaNextToken .~ rs ^. lasarrsNextToken

instance AWSRequest ListAppliedSchemaARNs where
  type
    Rs ListAppliedSchemaARNs =
      ListAppliedSchemaARNsResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListAppliedSchemaARNsResponse'
            <$> (x .?> "SchemaArns" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListAppliedSchemaARNs

instance NFData ListAppliedSchemaARNs

instance ToHeaders ListAppliedSchemaARNs where
  toHeaders = const mempty

instance ToJSON ListAppliedSchemaARNs where
  toJSON ListAppliedSchemaARNs' {..} =
    object
      ( catMaybes
          [ ("SchemaArn" .=) <$> _lasaSchemaARN,
            ("NextToken" .=) <$> _lasaNextToken,
            ("MaxResults" .=) <$> _lasaMaxResults,
            Just ("DirectoryArn" .= _lasaDirectoryARN)
          ]
      )

instance ToPath ListAppliedSchemaARNs where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/schema/applied"

instance ToQuery ListAppliedSchemaARNs where
  toQuery = const mempty

-- | /See:/ 'listAppliedSchemaARNsResponse' smart constructor.
data ListAppliedSchemaARNsResponse = ListAppliedSchemaARNsResponse'
  { _lasarrsSchemaARNs ::
      !( Maybe
           [Text]
       ),
    _lasarrsNextToken ::
      !( Maybe
           Text
       ),
    _lasarrsResponseStatus ::
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

-- | Creates a value of 'ListAppliedSchemaARNsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lasarrsSchemaARNs' - The ARNs of schemas that are applied to the directory.
--
-- * 'lasarrsNextToken' - The pagination token.
--
-- * 'lasarrsResponseStatus' - -- | The response status code.
listAppliedSchemaARNsResponse ::
  -- | 'lasarrsResponseStatus'
  Int ->
  ListAppliedSchemaARNsResponse
listAppliedSchemaARNsResponse pResponseStatus_ =
  ListAppliedSchemaARNsResponse'
    { _lasarrsSchemaARNs =
        Nothing,
      _lasarrsNextToken = Nothing,
      _lasarrsResponseStatus = pResponseStatus_
    }

-- | The ARNs of schemas that are applied to the directory.
lasarrsSchemaARNs :: Lens' ListAppliedSchemaARNsResponse [Text]
lasarrsSchemaARNs = lens _lasarrsSchemaARNs (\s a -> s {_lasarrsSchemaARNs = a}) . _Default . _Coerce

-- | The pagination token.
lasarrsNextToken :: Lens' ListAppliedSchemaARNsResponse (Maybe Text)
lasarrsNextToken = lens _lasarrsNextToken (\s a -> s {_lasarrsNextToken = a})

-- | -- | The response status code.
lasarrsResponseStatus :: Lens' ListAppliedSchemaARNsResponse Int
lasarrsResponseStatus = lens _lasarrsResponseStatus (\s a -> s {_lasarrsResponseStatus = a})

instance NFData ListAppliedSchemaARNsResponse
