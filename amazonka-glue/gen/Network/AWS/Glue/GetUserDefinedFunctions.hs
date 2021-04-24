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
-- Module      : Network.AWS.Glue.GetUserDefinedFunctions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves multiple function definitions from the Data Catalog.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetUserDefinedFunctions
  ( -- * Creating a Request
    getUserDefinedFunctions,
    GetUserDefinedFunctions,

    -- * Request Lenses
    gudfNextToken,
    gudfCatalogId,
    gudfMaxResults,
    gudfDatabaseName,
    gudfPattern,

    -- * Destructuring the Response
    getUserDefinedFunctionsResponse,
    GetUserDefinedFunctionsResponse,

    -- * Response Lenses
    gudfrursNextToken,
    gudfrursUserDefinedFunctions,
    gudfrursResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getUserDefinedFunctions' smart constructor.
data GetUserDefinedFunctions = GetUserDefinedFunctions'
  { _gudfNextToken ::
      !(Maybe Text),
    _gudfCatalogId ::
      !(Maybe Text),
    _gudfMaxResults ::
      !(Maybe Nat),
    _gudfDatabaseName ::
      !(Maybe Text),
    _gudfPattern :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetUserDefinedFunctions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gudfNextToken' - A continuation token, if this is a continuation call.
--
-- * 'gudfCatalogId' - The ID of the Data Catalog where the functions to be retrieved are located. If none is provided, the AWS account ID is used by default.
--
-- * 'gudfMaxResults' - The maximum number of functions to return in one response.
--
-- * 'gudfDatabaseName' - The name of the catalog database where the functions are located. If none is provided, functions from all the databases across the catalog will be returned.
--
-- * 'gudfPattern' - An optional function-name pattern string that filters the function definitions returned.
getUserDefinedFunctions ::
  -- | 'gudfPattern'
  Text ->
  GetUserDefinedFunctions
getUserDefinedFunctions pPattern_ =
  GetUserDefinedFunctions'
    { _gudfNextToken = Nothing,
      _gudfCatalogId = Nothing,
      _gudfMaxResults = Nothing,
      _gudfDatabaseName = Nothing,
      _gudfPattern = pPattern_
    }

-- | A continuation token, if this is a continuation call.
gudfNextToken :: Lens' GetUserDefinedFunctions (Maybe Text)
gudfNextToken = lens _gudfNextToken (\s a -> s {_gudfNextToken = a})

-- | The ID of the Data Catalog where the functions to be retrieved are located. If none is provided, the AWS account ID is used by default.
gudfCatalogId :: Lens' GetUserDefinedFunctions (Maybe Text)
gudfCatalogId = lens _gudfCatalogId (\s a -> s {_gudfCatalogId = a})

-- | The maximum number of functions to return in one response.
gudfMaxResults :: Lens' GetUserDefinedFunctions (Maybe Natural)
gudfMaxResults = lens _gudfMaxResults (\s a -> s {_gudfMaxResults = a}) . mapping _Nat

-- | The name of the catalog database where the functions are located. If none is provided, functions from all the databases across the catalog will be returned.
gudfDatabaseName :: Lens' GetUserDefinedFunctions (Maybe Text)
gudfDatabaseName = lens _gudfDatabaseName (\s a -> s {_gudfDatabaseName = a})

-- | An optional function-name pattern string that filters the function definitions returned.
gudfPattern :: Lens' GetUserDefinedFunctions Text
gudfPattern = lens _gudfPattern (\s a -> s {_gudfPattern = a})

instance AWSPager GetUserDefinedFunctions where
  page rq rs
    | stop (rs ^. gudfrursNextToken) = Nothing
    | stop (rs ^. gudfrursUserDefinedFunctions) = Nothing
    | otherwise =
      Just $ rq & gudfNextToken .~ rs ^. gudfrursNextToken

instance AWSRequest GetUserDefinedFunctions where
  type
    Rs GetUserDefinedFunctions =
      GetUserDefinedFunctionsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetUserDefinedFunctionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "UserDefinedFunctions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetUserDefinedFunctions

instance NFData GetUserDefinedFunctions

instance ToHeaders GetUserDefinedFunctions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetUserDefinedFunctions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetUserDefinedFunctions where
  toJSON GetUserDefinedFunctions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gudfNextToken,
            ("CatalogId" .=) <$> _gudfCatalogId,
            ("MaxResults" .=) <$> _gudfMaxResults,
            ("DatabaseName" .=) <$> _gudfDatabaseName,
            Just ("Pattern" .= _gudfPattern)
          ]
      )

instance ToPath GetUserDefinedFunctions where
  toPath = const "/"

instance ToQuery GetUserDefinedFunctions where
  toQuery = const mempty

-- | /See:/ 'getUserDefinedFunctionsResponse' smart constructor.
data GetUserDefinedFunctionsResponse = GetUserDefinedFunctionsResponse'
  { _gudfrursNextToken ::
      !( Maybe
           Text
       ),
    _gudfrursUserDefinedFunctions ::
      !( Maybe
           [UserDefinedFunction]
       ),
    _gudfrursResponseStatus ::
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

-- | Creates a value of 'GetUserDefinedFunctionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gudfrursNextToken' - A continuation token, if the list of functions returned does not include the last requested function.
--
-- * 'gudfrursUserDefinedFunctions' - A list of requested function definitions.
--
-- * 'gudfrursResponseStatus' - -- | The response status code.
getUserDefinedFunctionsResponse ::
  -- | 'gudfrursResponseStatus'
  Int ->
  GetUserDefinedFunctionsResponse
getUserDefinedFunctionsResponse pResponseStatus_ =
  GetUserDefinedFunctionsResponse'
    { _gudfrursNextToken =
        Nothing,
      _gudfrursUserDefinedFunctions = Nothing,
      _gudfrursResponseStatus = pResponseStatus_
    }

-- | A continuation token, if the list of functions returned does not include the last requested function.
gudfrursNextToken :: Lens' GetUserDefinedFunctionsResponse (Maybe Text)
gudfrursNextToken = lens _gudfrursNextToken (\s a -> s {_gudfrursNextToken = a})

-- | A list of requested function definitions.
gudfrursUserDefinedFunctions :: Lens' GetUserDefinedFunctionsResponse [UserDefinedFunction]
gudfrursUserDefinedFunctions = lens _gudfrursUserDefinedFunctions (\s a -> s {_gudfrursUserDefinedFunctions = a}) . _Default . _Coerce

-- | -- | The response status code.
gudfrursResponseStatus :: Lens' GetUserDefinedFunctionsResponse Int
gudfrursResponseStatus = lens _gudfrursResponseStatus (\s a -> s {_gudfrursResponseStatus = a})

instance NFData GetUserDefinedFunctionsResponse
