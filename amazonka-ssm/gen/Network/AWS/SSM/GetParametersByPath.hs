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
-- Module      : Network.AWS.SSM.GetParametersByPath
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve information about one or more parameters in a specific hierarchy.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.GetParametersByPath
  ( -- * Creating a Request
    getParametersByPath,
    GetParametersByPath,

    -- * Request Lenses
    gpbpWithDecryption,
    gpbpNextToken,
    gpbpMaxResults,
    gpbpRecursive,
    gpbpParameterFilters,
    gpbpPath,

    -- * Destructuring the Response
    getParametersByPathResponse,
    GetParametersByPathResponse,

    -- * Response Lenses
    gpbprrsNextToken,
    gpbprrsParameters,
    gpbprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getParametersByPath' smart constructor.
data GetParametersByPath = GetParametersByPath'
  { _gpbpWithDecryption ::
      !(Maybe Bool),
    _gpbpNextToken :: !(Maybe Text),
    _gpbpMaxResults :: !(Maybe Nat),
    _gpbpRecursive :: !(Maybe Bool),
    _gpbpParameterFilters ::
      !( Maybe
           [ParameterStringFilter]
       ),
    _gpbpPath :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetParametersByPath' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpbpWithDecryption' - Retrieve all parameters in a hierarchy with their value decrypted.
--
-- * 'gpbpNextToken' - A token to start the list. Use this token to get the next set of results.
--
-- * 'gpbpMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'gpbpRecursive' - Retrieve all parameters within a hierarchy. /Important:/ If a user has access to a path, then the user can access all levels of that path. For example, if a user has permission to access path @/a@ , then the user can also access @/a/b@ . Even if a user has explicitly been denied access in IAM for parameter @/a/b@ , they can still call the GetParametersByPath API action recursively for @/a@ and view @/a/b@ .
--
-- * 'gpbpParameterFilters' - Filters to limit the request results.
--
-- * 'gpbpPath' - The hierarchy for the parameter. Hierarchies start with a forward slash (/). The hierachy is the parameter name except the last part of the parameter. For the API call to succeeed, the last part of the parameter name cannot be in the path. A parameter name hierarchy can have a maximum of 15 levels. Here is an example of a hierarchy: @/Finance/Prod/IAD/WinServ2016/license33 @
getParametersByPath ::
  -- | 'gpbpPath'
  Text ->
  GetParametersByPath
getParametersByPath pPath_ =
  GetParametersByPath'
    { _gpbpWithDecryption = Nothing,
      _gpbpNextToken = Nothing,
      _gpbpMaxResults = Nothing,
      _gpbpRecursive = Nothing,
      _gpbpParameterFilters = Nothing,
      _gpbpPath = pPath_
    }

-- | Retrieve all parameters in a hierarchy with their value decrypted.
gpbpWithDecryption :: Lens' GetParametersByPath (Maybe Bool)
gpbpWithDecryption = lens _gpbpWithDecryption (\s a -> s {_gpbpWithDecryption = a})

-- | A token to start the list. Use this token to get the next set of results.
gpbpNextToken :: Lens' GetParametersByPath (Maybe Text)
gpbpNextToken = lens _gpbpNextToken (\s a -> s {_gpbpNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
gpbpMaxResults :: Lens' GetParametersByPath (Maybe Natural)
gpbpMaxResults = lens _gpbpMaxResults (\s a -> s {_gpbpMaxResults = a}) . mapping _Nat

-- | Retrieve all parameters within a hierarchy. /Important:/ If a user has access to a path, then the user can access all levels of that path. For example, if a user has permission to access path @/a@ , then the user can also access @/a/b@ . Even if a user has explicitly been denied access in IAM for parameter @/a/b@ , they can still call the GetParametersByPath API action recursively for @/a@ and view @/a/b@ .
gpbpRecursive :: Lens' GetParametersByPath (Maybe Bool)
gpbpRecursive = lens _gpbpRecursive (\s a -> s {_gpbpRecursive = a})

-- | Filters to limit the request results.
gpbpParameterFilters :: Lens' GetParametersByPath [ParameterStringFilter]
gpbpParameterFilters = lens _gpbpParameterFilters (\s a -> s {_gpbpParameterFilters = a}) . _Default . _Coerce

-- | The hierarchy for the parameter. Hierarchies start with a forward slash (/). The hierachy is the parameter name except the last part of the parameter. For the API call to succeeed, the last part of the parameter name cannot be in the path. A parameter name hierarchy can have a maximum of 15 levels. Here is an example of a hierarchy: @/Finance/Prod/IAD/WinServ2016/license33 @
gpbpPath :: Lens' GetParametersByPath Text
gpbpPath = lens _gpbpPath (\s a -> s {_gpbpPath = a})

instance AWSPager GetParametersByPath where
  page rq rs
    | stop (rs ^. gpbprrsNextToken) = Nothing
    | stop (rs ^. gpbprrsParameters) = Nothing
    | otherwise =
      Just $ rq & gpbpNextToken .~ rs ^. gpbprrsNextToken

instance AWSRequest GetParametersByPath where
  type
    Rs GetParametersByPath =
      GetParametersByPathResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetParametersByPathResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Parameters" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetParametersByPath

instance NFData GetParametersByPath

instance ToHeaders GetParametersByPath where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetParametersByPath" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetParametersByPath where
  toJSON GetParametersByPath' {..} =
    object
      ( catMaybes
          [ ("WithDecryption" .=) <$> _gpbpWithDecryption,
            ("NextToken" .=) <$> _gpbpNextToken,
            ("MaxResults" .=) <$> _gpbpMaxResults,
            ("Recursive" .=) <$> _gpbpRecursive,
            ("ParameterFilters" .=) <$> _gpbpParameterFilters,
            Just ("Path" .= _gpbpPath)
          ]
      )

instance ToPath GetParametersByPath where
  toPath = const "/"

instance ToQuery GetParametersByPath where
  toQuery = const mempty

-- | /See:/ 'getParametersByPathResponse' smart constructor.
data GetParametersByPathResponse = GetParametersByPathResponse'
  { _gpbprrsNextToken ::
      !(Maybe Text),
    _gpbprrsParameters ::
      !( Maybe
           [Parameter]
       ),
    _gpbprrsResponseStatus ::
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

-- | Creates a value of 'GetParametersByPathResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpbprrsNextToken' - The token for the next set of items to return. Use this token to get the next set of results.
--
-- * 'gpbprrsParameters' - A list of parameters found in the specified hierarchy.
--
-- * 'gpbprrsResponseStatus' - -- | The response status code.
getParametersByPathResponse ::
  -- | 'gpbprrsResponseStatus'
  Int ->
  GetParametersByPathResponse
getParametersByPathResponse pResponseStatus_ =
  GetParametersByPathResponse'
    { _gpbprrsNextToken =
        Nothing,
      _gpbprrsParameters = Nothing,
      _gpbprrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of items to return. Use this token to get the next set of results.
gpbprrsNextToken :: Lens' GetParametersByPathResponse (Maybe Text)
gpbprrsNextToken = lens _gpbprrsNextToken (\s a -> s {_gpbprrsNextToken = a})

-- | A list of parameters found in the specified hierarchy.
gpbprrsParameters :: Lens' GetParametersByPathResponse [Parameter]
gpbprrsParameters = lens _gpbprrsParameters (\s a -> s {_gpbprrsParameters = a}) . _Default . _Coerce

-- | -- | The response status code.
gpbprrsResponseStatus :: Lens' GetParametersByPathResponse Int
gpbprrsResponseStatus = lens _gpbprrsResponseStatus (\s a -> s {_gpbprrsResponseStatus = a})

instance NFData GetParametersByPathResponse
