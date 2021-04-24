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
-- Module      : Network.AWS.SWF.ListActivityTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all activities registered in the specified domain that match the specified name and registration status. The result includes information like creation date, current status of the activity, etc. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the @nextPageToken@ returned by the initial call.
--
--
-- __Access Control__
--
-- You can use IAM policies to control this action's access to Amazon SWF resources as follows:
--
--     * Use a @Resource@ element with the domain name to limit the action to only specified domains.
--
--     * Use an @Action@ element to allow or deny permission to call this action.
--
--     * You cannot use an IAM policy to constrain this action's parameters.
--
--
--
-- If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's @cause@ parameter is set to @OPERATION_NOT_PERMITTED@ . For details and example IAM policies, see <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows> in the /Amazon SWF Developer Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.SWF.ListActivityTypes
  ( -- * Creating a Request
    listActivityTypes,
    ListActivityTypes,

    -- * Request Lenses
    latName,
    latNextPageToken,
    latMaximumPageSize,
    latReverseOrder,
    latDomain,
    latRegistrationStatus,

    -- * Destructuring the Response
    listActivityTypesResponse,
    ListActivityTypesResponse,

    -- * Response Lenses
    latrrsNextPageToken,
    latrrsResponseStatus,
    latrrsTypeInfos,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SWF.Types

-- | /See:/ 'listActivityTypes' smart constructor.
data ListActivityTypes = ListActivityTypes'
  { _latName ::
      !(Maybe Text),
    _latNextPageToken :: !(Maybe Text),
    _latMaximumPageSize :: !(Maybe Nat),
    _latReverseOrder :: !(Maybe Bool),
    _latDomain :: !Text,
    _latRegistrationStatus ::
      !RegistrationStatus
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListActivityTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'latName' - If specified, only lists the activity types that have this name.
--
-- * 'latNextPageToken' - If @NextPageToken@ is returned there are more results available. The value of @NextPageToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 60 seconds. Using an expired pagination token will return a @400@ error: "@Specified token has exceeded its maximum lifetime@ ".  The configured @maximumPageSize@ determines how many results can be returned in a single call.
--
-- * 'latMaximumPageSize' - The maximum number of results that are returned per call. Use @nextPageToken@ to obtain further pages of results.
--
-- * 'latReverseOrder' - When set to @true@ , returns the results in reverse order. By default, the results are returned in ascending alphabetical order by @name@ of the activity types.
--
-- * 'latDomain' - The name of the domain in which the activity types have been registered.
--
-- * 'latRegistrationStatus' - Specifies the registration status of the activity types to list.
listActivityTypes ::
  -- | 'latDomain'
  Text ->
  -- | 'latRegistrationStatus'
  RegistrationStatus ->
  ListActivityTypes
listActivityTypes pDomain_ pRegistrationStatus_ =
  ListActivityTypes'
    { _latName = Nothing,
      _latNextPageToken = Nothing,
      _latMaximumPageSize = Nothing,
      _latReverseOrder = Nothing,
      _latDomain = pDomain_,
      _latRegistrationStatus = pRegistrationStatus_
    }

-- | If specified, only lists the activity types that have this name.
latName :: Lens' ListActivityTypes (Maybe Text)
latName = lens _latName (\s a -> s {_latName = a})

-- | If @NextPageToken@ is returned there are more results available. The value of @NextPageToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 60 seconds. Using an expired pagination token will return a @400@ error: "@Specified token has exceeded its maximum lifetime@ ".  The configured @maximumPageSize@ determines how many results can be returned in a single call.
latNextPageToken :: Lens' ListActivityTypes (Maybe Text)
latNextPageToken = lens _latNextPageToken (\s a -> s {_latNextPageToken = a})

-- | The maximum number of results that are returned per call. Use @nextPageToken@ to obtain further pages of results.
latMaximumPageSize :: Lens' ListActivityTypes (Maybe Natural)
latMaximumPageSize = lens _latMaximumPageSize (\s a -> s {_latMaximumPageSize = a}) . mapping _Nat

-- | When set to @true@ , returns the results in reverse order. By default, the results are returned in ascending alphabetical order by @name@ of the activity types.
latReverseOrder :: Lens' ListActivityTypes (Maybe Bool)
latReverseOrder = lens _latReverseOrder (\s a -> s {_latReverseOrder = a})

-- | The name of the domain in which the activity types have been registered.
latDomain :: Lens' ListActivityTypes Text
latDomain = lens _latDomain (\s a -> s {_latDomain = a})

-- | Specifies the registration status of the activity types to list.
latRegistrationStatus :: Lens' ListActivityTypes RegistrationStatus
latRegistrationStatus = lens _latRegistrationStatus (\s a -> s {_latRegistrationStatus = a})

instance AWSPager ListActivityTypes where
  page rq rs
    | stop (rs ^. latrrsNextPageToken) = Nothing
    | stop (rs ^. latrrsTypeInfos) = Nothing
    | otherwise =
      Just $
        rq
          & latNextPageToken .~ rs ^. latrrsNextPageToken

instance AWSRequest ListActivityTypes where
  type Rs ListActivityTypes = ListActivityTypesResponse
  request = postJSON swf
  response =
    receiveJSON
      ( \s h x ->
          ListActivityTypesResponse'
            <$> (x .?> "nextPageToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "typeInfos" .!@ mempty)
      )

instance Hashable ListActivityTypes

instance NFData ListActivityTypes

instance ToHeaders ListActivityTypes where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SimpleWorkflowService.ListActivityTypes" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON ListActivityTypes where
  toJSON ListActivityTypes' {..} =
    object
      ( catMaybes
          [ ("name" .=) <$> _latName,
            ("nextPageToken" .=) <$> _latNextPageToken,
            ("maximumPageSize" .=) <$> _latMaximumPageSize,
            ("reverseOrder" .=) <$> _latReverseOrder,
            Just ("domain" .= _latDomain),
            Just
              ("registrationStatus" .= _latRegistrationStatus)
          ]
      )

instance ToPath ListActivityTypes where
  toPath = const "/"

instance ToQuery ListActivityTypes where
  toQuery = const mempty

-- | Contains a paginated list of activity type information structures.
--
--
--
-- /See:/ 'listActivityTypesResponse' smart constructor.
data ListActivityTypesResponse = ListActivityTypesResponse'
  { _latrrsNextPageToken ::
      !(Maybe Text),
    _latrrsResponseStatus ::
      !Int,
    _latrrsTypeInfos ::
      ![ActivityTypeInfo]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListActivityTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'latrrsNextPageToken' - If a @NextPageToken@ was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in @nextPageToken@ . Keep all other arguments unchanged. The configured @maximumPageSize@ determines how many results can be returned in a single call.
--
-- * 'latrrsResponseStatus' - -- | The response status code.
--
-- * 'latrrsTypeInfos' - List of activity type information.
listActivityTypesResponse ::
  -- | 'latrrsResponseStatus'
  Int ->
  ListActivityTypesResponse
listActivityTypesResponse pResponseStatus_ =
  ListActivityTypesResponse'
    { _latrrsNextPageToken =
        Nothing,
      _latrrsResponseStatus = pResponseStatus_,
      _latrrsTypeInfos = mempty
    }

-- | If a @NextPageToken@ was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in @nextPageToken@ . Keep all other arguments unchanged. The configured @maximumPageSize@ determines how many results can be returned in a single call.
latrrsNextPageToken :: Lens' ListActivityTypesResponse (Maybe Text)
latrrsNextPageToken = lens _latrrsNextPageToken (\s a -> s {_latrrsNextPageToken = a})

-- | -- | The response status code.
latrrsResponseStatus :: Lens' ListActivityTypesResponse Int
latrrsResponseStatus = lens _latrrsResponseStatus (\s a -> s {_latrrsResponseStatus = a})

-- | List of activity type information.
latrrsTypeInfos :: Lens' ListActivityTypesResponse [ActivityTypeInfo]
latrrsTypeInfos = lens _latrrsTypeInfos (\s a -> s {_latrrsTypeInfos = a}) . _Coerce

instance NFData ListActivityTypesResponse
