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
-- Module      : Network.AWS.Config.GetDiscoveredResourceCounts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the resource types, the number of each resource type, and the total number of resources that AWS Config is recording in this region for your AWS account.
--
--
-- __Example__
--
--     * AWS Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets.
--
--     * You make a call to the @GetDiscoveredResourceCounts@ action and specify that you want all resource types.
--
--     * AWS Config returns the following:
--
--     * The resource types (EC2 instances, IAM users, and S3 buckets).
--
--     * The number of each resource type (25, 20, and 15).
--
--     * The total number of all resources (60).
--
--
--
--
--
-- The response is paginated. By default, AWS Config lists 100 'ResourceCount' objects on each page. You can customize this number with the @limit@ parameter. The response includes a @nextToken@ string. To get the next page of results, run the request again and specify the string for the @nextToken@ parameter.
module Network.AWS.Config.GetDiscoveredResourceCounts
  ( -- * Creating a Request
    getDiscoveredResourceCounts,
    GetDiscoveredResourceCounts,

    -- * Request Lenses
    gdrcNextToken,
    gdrcResourceTypes,
    gdrcLimit,

    -- * Destructuring the Response
    getDiscoveredResourceCountsResponse,
    GetDiscoveredResourceCountsResponse,

    -- * Response Lenses
    gdrcrrsNextToken,
    gdrcrrsTotalDiscoveredResources,
    gdrcrrsResourceCounts,
    gdrcrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDiscoveredResourceCounts' smart constructor.
data GetDiscoveredResourceCounts = GetDiscoveredResourceCounts'
  { _gdrcNextToken ::
      !(Maybe Text),
    _gdrcResourceTypes ::
      !(Maybe [Text]),
    _gdrcLimit ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetDiscoveredResourceCounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrcNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'gdrcResourceTypes' - The comma-separated list that specifies the resource types that you want AWS Config to return (for example, @"AWS::EC2::Instance"@ , @"AWS::IAM::User"@ ). If a value for @resourceTypes@ is not specified, AWS Config returns all resource types that AWS Config is recording in the region for your account.
--
-- * 'gdrcLimit' - The maximum number of 'ResourceCount' objects returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
getDiscoveredResourceCounts ::
  GetDiscoveredResourceCounts
getDiscoveredResourceCounts =
  GetDiscoveredResourceCounts'
    { _gdrcNextToken =
        Nothing,
      _gdrcResourceTypes = Nothing,
      _gdrcLimit = Nothing
    }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
gdrcNextToken :: Lens' GetDiscoveredResourceCounts (Maybe Text)
gdrcNextToken = lens _gdrcNextToken (\s a -> s {_gdrcNextToken = a})

-- | The comma-separated list that specifies the resource types that you want AWS Config to return (for example, @"AWS::EC2::Instance"@ , @"AWS::IAM::User"@ ). If a value for @resourceTypes@ is not specified, AWS Config returns all resource types that AWS Config is recording in the region for your account.
gdrcResourceTypes :: Lens' GetDiscoveredResourceCounts [Text]
gdrcResourceTypes = lens _gdrcResourceTypes (\s a -> s {_gdrcResourceTypes = a}) . _Default . _Coerce

-- | The maximum number of 'ResourceCount' objects returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
gdrcLimit :: Lens' GetDiscoveredResourceCounts (Maybe Natural)
gdrcLimit = lens _gdrcLimit (\s a -> s {_gdrcLimit = a}) . mapping _Nat

instance AWSRequest GetDiscoveredResourceCounts where
  type
    Rs GetDiscoveredResourceCounts =
      GetDiscoveredResourceCountsResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          GetDiscoveredResourceCountsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "totalDiscoveredResources")
            <*> (x .?> "resourceCounts" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetDiscoveredResourceCounts

instance NFData GetDiscoveredResourceCounts

instance ToHeaders GetDiscoveredResourceCounts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.GetDiscoveredResourceCounts" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDiscoveredResourceCounts where
  toJSON GetDiscoveredResourceCounts' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _gdrcNextToken,
            ("resourceTypes" .=) <$> _gdrcResourceTypes,
            ("limit" .=) <$> _gdrcLimit
          ]
      )

instance ToPath GetDiscoveredResourceCounts where
  toPath = const "/"

instance ToQuery GetDiscoveredResourceCounts where
  toQuery = const mempty

-- | /See:/ 'getDiscoveredResourceCountsResponse' smart constructor.
data GetDiscoveredResourceCountsResponse = GetDiscoveredResourceCountsResponse'
  { _gdrcrrsNextToken ::
      !( Maybe
           Text
       ),
    _gdrcrrsTotalDiscoveredResources ::
      !( Maybe
           Integer
       ),
    _gdrcrrsResourceCounts ::
      !( Maybe
           [ResourceCount]
       ),
    _gdrcrrsResponseStatus ::
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

-- | Creates a value of 'GetDiscoveredResourceCountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrcrrsNextToken' - The string that you use in a subsequent request to get the next page of results in a paginated response.
--
-- * 'gdrcrrsTotalDiscoveredResources' - The total number of resources that AWS Config is recording in the region for your account. If you specify resource types in the request, AWS Config returns only the total number of resources for those resource types. __Example__      * AWS Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets, for a total of 60 resources.     * You make a call to the @GetDiscoveredResourceCounts@ action and specify the resource type, @"AWS::EC2::Instances"@ , in the request.     * AWS Config returns 25 for @totalDiscoveredResources@ .
--
-- * 'gdrcrrsResourceCounts' - The list of @ResourceCount@ objects. Each object is listed in descending order by the number of resources.
--
-- * 'gdrcrrsResponseStatus' - -- | The response status code.
getDiscoveredResourceCountsResponse ::
  -- | 'gdrcrrsResponseStatus'
  Int ->
  GetDiscoveredResourceCountsResponse
getDiscoveredResourceCountsResponse pResponseStatus_ =
  GetDiscoveredResourceCountsResponse'
    { _gdrcrrsNextToken =
        Nothing,
      _gdrcrrsTotalDiscoveredResources =
        Nothing,
      _gdrcrrsResourceCounts = Nothing,
      _gdrcrrsResponseStatus =
        pResponseStatus_
    }

-- | The string that you use in a subsequent request to get the next page of results in a paginated response.
gdrcrrsNextToken :: Lens' GetDiscoveredResourceCountsResponse (Maybe Text)
gdrcrrsNextToken = lens _gdrcrrsNextToken (\s a -> s {_gdrcrrsNextToken = a})

-- | The total number of resources that AWS Config is recording in the region for your account. If you specify resource types in the request, AWS Config returns only the total number of resources for those resource types. __Example__      * AWS Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets, for a total of 60 resources.     * You make a call to the @GetDiscoveredResourceCounts@ action and specify the resource type, @"AWS::EC2::Instances"@ , in the request.     * AWS Config returns 25 for @totalDiscoveredResources@ .
gdrcrrsTotalDiscoveredResources :: Lens' GetDiscoveredResourceCountsResponse (Maybe Integer)
gdrcrrsTotalDiscoveredResources = lens _gdrcrrsTotalDiscoveredResources (\s a -> s {_gdrcrrsTotalDiscoveredResources = a})

-- | The list of @ResourceCount@ objects. Each object is listed in descending order by the number of resources.
gdrcrrsResourceCounts :: Lens' GetDiscoveredResourceCountsResponse [ResourceCount]
gdrcrrsResourceCounts = lens _gdrcrrsResourceCounts (\s a -> s {_gdrcrrsResourceCounts = a}) . _Default . _Coerce

-- | -- | The response status code.
gdrcrrsResponseStatus :: Lens' GetDiscoveredResourceCountsResponse Int
gdrcrrsResponseStatus = lens _gdrcrrsResponseStatus (\s a -> s {_gdrcrrsResponseStatus = a})

instance NFData GetDiscoveredResourceCountsResponse
