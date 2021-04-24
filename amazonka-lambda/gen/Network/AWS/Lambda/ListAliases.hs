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
-- Module      : Network.AWS.Lambda.ListAliases
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of <https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html aliases> for a Lambda function.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lambda.ListAliases
  ( -- * Creating a Request
    listAliases,
    ListAliases,

    -- * Request Lenses
    laFunctionVersion,
    laMaxItems,
    laMarker,
    laFunctionName,

    -- * Destructuring the Response
    listAliasesResponse,
    ListAliasesResponse,

    -- * Response Lenses
    larrsNextMarker,
    larrsAliases,
    larrsResponseStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAliases' smart constructor.
data ListAliases = ListAliases'
  { _laFunctionVersion ::
      !(Maybe Text),
    _laMaxItems :: !(Maybe Nat),
    _laMarker :: !(Maybe Text),
    _laFunctionName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAliases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laFunctionVersion' - Specify a function version to only list aliases that invoke that version.
--
-- * 'laMaxItems' - Limit the number of aliases returned.
--
-- * 'laMarker' - Specify the pagination token that's returned by a previous request to retrieve the next page of results.
--
-- * 'laFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
listAliases ::
  -- | 'laFunctionName'
  Text ->
  ListAliases
listAliases pFunctionName_ =
  ListAliases'
    { _laFunctionVersion = Nothing,
      _laMaxItems = Nothing,
      _laMarker = Nothing,
      _laFunctionName = pFunctionName_
    }

-- | Specify a function version to only list aliases that invoke that version.
laFunctionVersion :: Lens' ListAliases (Maybe Text)
laFunctionVersion = lens _laFunctionVersion (\s a -> s {_laFunctionVersion = a})

-- | Limit the number of aliases returned.
laMaxItems :: Lens' ListAliases (Maybe Natural)
laMaxItems = lens _laMaxItems (\s a -> s {_laMaxItems = a}) . mapping _Nat

-- | Specify the pagination token that's returned by a previous request to retrieve the next page of results.
laMarker :: Lens' ListAliases (Maybe Text)
laMarker = lens _laMarker (\s a -> s {_laMarker = a})

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
laFunctionName :: Lens' ListAliases Text
laFunctionName = lens _laFunctionName (\s a -> s {_laFunctionName = a})

instance AWSPager ListAliases where
  page rq rs
    | stop (rs ^. larrsNextMarker) = Nothing
    | stop (rs ^. larrsAliases) = Nothing
    | otherwise =
      Just $ rq & laMarker .~ rs ^. larrsNextMarker

instance AWSRequest ListAliases where
  type Rs ListAliases = ListAliasesResponse
  request = get lambda
  response =
    receiveJSON
      ( \s h x ->
          ListAliasesResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "Aliases" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAliases

instance NFData ListAliases

instance ToHeaders ListAliases where
  toHeaders = const mempty

instance ToPath ListAliases where
  toPath ListAliases' {..} =
    mconcat
      [ "/2015-03-31/functions/",
        toBS _laFunctionName,
        "/aliases"
      ]

instance ToQuery ListAliases where
  toQuery ListAliases' {..} =
    mconcat
      [ "FunctionVersion" =: _laFunctionVersion,
        "MaxItems" =: _laMaxItems,
        "Marker" =: _laMarker
      ]

-- | /See:/ 'listAliasesResponse' smart constructor.
data ListAliasesResponse = ListAliasesResponse'
  { _larrsNextMarker ::
      !(Maybe Text),
    _larrsAliases ::
      !(Maybe [AliasConfiguration]),
    _larrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAliasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrsNextMarker' - The pagination token that's included if more results are available.
--
-- * 'larrsAliases' - A list of aliases.
--
-- * 'larrsResponseStatus' - -- | The response status code.
listAliasesResponse ::
  -- | 'larrsResponseStatus'
  Int ->
  ListAliasesResponse
listAliasesResponse pResponseStatus_ =
  ListAliasesResponse'
    { _larrsNextMarker = Nothing,
      _larrsAliases = Nothing,
      _larrsResponseStatus = pResponseStatus_
    }

-- | The pagination token that's included if more results are available.
larrsNextMarker :: Lens' ListAliasesResponse (Maybe Text)
larrsNextMarker = lens _larrsNextMarker (\s a -> s {_larrsNextMarker = a})

-- | A list of aliases.
larrsAliases :: Lens' ListAliasesResponse [AliasConfiguration]
larrsAliases = lens _larrsAliases (\s a -> s {_larrsAliases = a}) . _Default . _Coerce

-- | -- | The response status code.
larrsResponseStatus :: Lens' ListAliasesResponse Int
larrsResponseStatus = lens _larrsResponseStatus (\s a -> s {_larrsResponseStatus = a})

instance NFData ListAliasesResponse
