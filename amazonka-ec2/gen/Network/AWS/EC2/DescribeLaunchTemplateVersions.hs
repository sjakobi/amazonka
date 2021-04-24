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
-- Module      : Network.AWS.EC2.DescribeLaunchTemplateVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more versions of a specified launch template. You can describe all versions, individual versions, or a range of versions. You can also describe all the latest versions or all the default versions of all the launch templates in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeLaunchTemplateVersions
  ( -- * Creating a Request
    describeLaunchTemplateVersions,
    DescribeLaunchTemplateVersions,

    -- * Request Lenses
    dltvNextToken,
    dltvVersions,
    dltvDryRun,
    dltvMaxResults,
    dltvMinVersion,
    dltvLaunchTemplateId,
    dltvLaunchTemplateName,
    dltvMaxVersion,
    dltvFilters,

    -- * Destructuring the Response
    describeLaunchTemplateVersionsResponse,
    DescribeLaunchTemplateVersionsResponse,

    -- * Response Lenses
    dltvrlrsNextToken,
    dltvrlrsLaunchTemplateVersions,
    dltvrlrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLaunchTemplateVersions' smart constructor.
data DescribeLaunchTemplateVersions = DescribeLaunchTemplateVersions'
  { _dltvNextToken ::
      !( Maybe
           Text
       ),
    _dltvVersions ::
      !( Maybe
           [Text]
       ),
    _dltvDryRun ::
      !( Maybe
           Bool
       ),
    _dltvMaxResults ::
      !( Maybe
           Int
       ),
    _dltvMinVersion ::
      !( Maybe
           Text
       ),
    _dltvLaunchTemplateId ::
      !( Maybe
           Text
       ),
    _dltvLaunchTemplateName ::
      !( Maybe
           Text
       ),
    _dltvMaxVersion ::
      !( Maybe
           Text
       ),
    _dltvFilters ::
      !( Maybe
           [Filter]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeLaunchTemplateVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dltvNextToken' - The token to request the next page of results.
--
-- * 'dltvVersions' - One or more versions of the launch template. Valid values depend on whether you are describing a specified launch template (by ID or name) or all launch templates in your account. To describe one or more versions of a specified launch template, valid values are @> Latest@ , @> Default@ , and numbers. To describe all launch templates in your account that are defined as the latest version, the valid value is @> Latest@ . To describe all launch templates in your account that are defined as the default version, the valid value is @> Default@ . You can specify @> Latest@ and @> Default@ in the same call. You cannot specify numbers.
--
-- * 'dltvDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dltvMaxResults' - The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. This value can be between 1 and 200.
--
-- * 'dltvMinVersion' - The version number after which to describe launch template versions.
--
-- * 'dltvLaunchTemplateId' - The ID of the launch template. To describe one or more versions of a specified launch template, you must specify either the launch template ID or the launch template name in the request. To describe all the latest or default launch template versions in your account, you must omit this parameter.
--
-- * 'dltvLaunchTemplateName' - The name of the launch template. To describe one or more versions of a specified launch template, you must specify either the launch template ID or the launch template name in the request. To describe all the latest or default launch template versions in your account, you must omit this parameter.
--
-- * 'dltvMaxVersion' - The version number up to which to describe launch template versions.
--
-- * 'dltvFilters' - One or more filters.     * @create-time@ - The time the launch template version was created.     * @ebs-optimized@ - A boolean that indicates whether the instance is optimized for Amazon EBS I/O.     * @iam-instance-profile@ - The ARN of the IAM instance profile.     * @image-id@ - The ID of the AMI.     * @instance-type@ - The instance type.     * @is-default-version@ - A boolean that indicates whether the launch template version is the default version.     * @kernel-id@ - The kernel ID.     * @ram-disk-id@ - The RAM disk ID.
describeLaunchTemplateVersions ::
  DescribeLaunchTemplateVersions
describeLaunchTemplateVersions =
  DescribeLaunchTemplateVersions'
    { _dltvNextToken =
        Nothing,
      _dltvVersions = Nothing,
      _dltvDryRun = Nothing,
      _dltvMaxResults = Nothing,
      _dltvMinVersion = Nothing,
      _dltvLaunchTemplateId = Nothing,
      _dltvLaunchTemplateName = Nothing,
      _dltvMaxVersion = Nothing,
      _dltvFilters = Nothing
    }

-- | The token to request the next page of results.
dltvNextToken :: Lens' DescribeLaunchTemplateVersions (Maybe Text)
dltvNextToken = lens _dltvNextToken (\s a -> s {_dltvNextToken = a})

-- | One or more versions of the launch template. Valid values depend on whether you are describing a specified launch template (by ID or name) or all launch templates in your account. To describe one or more versions of a specified launch template, valid values are @> Latest@ , @> Default@ , and numbers. To describe all launch templates in your account that are defined as the latest version, the valid value is @> Latest@ . To describe all launch templates in your account that are defined as the default version, the valid value is @> Default@ . You can specify @> Latest@ and @> Default@ in the same call. You cannot specify numbers.
dltvVersions :: Lens' DescribeLaunchTemplateVersions [Text]
dltvVersions = lens _dltvVersions (\s a -> s {_dltvVersions = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dltvDryRun :: Lens' DescribeLaunchTemplateVersions (Maybe Bool)
dltvDryRun = lens _dltvDryRun (\s a -> s {_dltvDryRun = a})

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. This value can be between 1 and 200.
dltvMaxResults :: Lens' DescribeLaunchTemplateVersions (Maybe Int)
dltvMaxResults = lens _dltvMaxResults (\s a -> s {_dltvMaxResults = a})

-- | The version number after which to describe launch template versions.
dltvMinVersion :: Lens' DescribeLaunchTemplateVersions (Maybe Text)
dltvMinVersion = lens _dltvMinVersion (\s a -> s {_dltvMinVersion = a})

-- | The ID of the launch template. To describe one or more versions of a specified launch template, you must specify either the launch template ID or the launch template name in the request. To describe all the latest or default launch template versions in your account, you must omit this parameter.
dltvLaunchTemplateId :: Lens' DescribeLaunchTemplateVersions (Maybe Text)
dltvLaunchTemplateId = lens _dltvLaunchTemplateId (\s a -> s {_dltvLaunchTemplateId = a})

-- | The name of the launch template. To describe one or more versions of a specified launch template, you must specify either the launch template ID or the launch template name in the request. To describe all the latest or default launch template versions in your account, you must omit this parameter.
dltvLaunchTemplateName :: Lens' DescribeLaunchTemplateVersions (Maybe Text)
dltvLaunchTemplateName = lens _dltvLaunchTemplateName (\s a -> s {_dltvLaunchTemplateName = a})

-- | The version number up to which to describe launch template versions.
dltvMaxVersion :: Lens' DescribeLaunchTemplateVersions (Maybe Text)
dltvMaxVersion = lens _dltvMaxVersion (\s a -> s {_dltvMaxVersion = a})

-- | One or more filters.     * @create-time@ - The time the launch template version was created.     * @ebs-optimized@ - A boolean that indicates whether the instance is optimized for Amazon EBS I/O.     * @iam-instance-profile@ - The ARN of the IAM instance profile.     * @image-id@ - The ID of the AMI.     * @instance-type@ - The instance type.     * @is-default-version@ - A boolean that indicates whether the launch template version is the default version.     * @kernel-id@ - The kernel ID.     * @ram-disk-id@ - The RAM disk ID.
dltvFilters :: Lens' DescribeLaunchTemplateVersions [Filter]
dltvFilters = lens _dltvFilters (\s a -> s {_dltvFilters = a}) . _Default . _Coerce

instance AWSPager DescribeLaunchTemplateVersions where
  page rq rs
    | stop (rs ^. dltvrlrsNextToken) = Nothing
    | stop (rs ^. dltvrlrsLaunchTemplateVersions) =
      Nothing
    | otherwise =
      Just $ rq & dltvNextToken .~ rs ^. dltvrlrsNextToken

instance AWSRequest DescribeLaunchTemplateVersions where
  type
    Rs DescribeLaunchTemplateVersions =
      DescribeLaunchTemplateVersionsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeLaunchTemplateVersionsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "launchTemplateVersionSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLaunchTemplateVersions

instance NFData DescribeLaunchTemplateVersions

instance ToHeaders DescribeLaunchTemplateVersions where
  toHeaders = const mempty

instance ToPath DescribeLaunchTemplateVersions where
  toPath = const "/"

instance ToQuery DescribeLaunchTemplateVersions where
  toQuery DescribeLaunchTemplateVersions' {..} =
    mconcat
      [ "Action"
          =: ("DescribeLaunchTemplateVersions" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dltvNextToken,
        toQuery
          ( toQueryList "LaunchTemplateVersion"
              <$> _dltvVersions
          ),
        "DryRun" =: _dltvDryRun,
        "MaxResults" =: _dltvMaxResults,
        "MinVersion" =: _dltvMinVersion,
        "LaunchTemplateId" =: _dltvLaunchTemplateId,
        "LaunchTemplateName" =: _dltvLaunchTemplateName,
        "MaxVersion" =: _dltvMaxVersion,
        toQuery (toQueryList "Filter" <$> _dltvFilters)
      ]

-- | /See:/ 'describeLaunchTemplateVersionsResponse' smart constructor.
data DescribeLaunchTemplateVersionsResponse = DescribeLaunchTemplateVersionsResponse'
  { _dltvrlrsNextToken ::
      !( Maybe
           Text
       ),
    _dltvrlrsLaunchTemplateVersions ::
      !( Maybe
           [LaunchTemplateVersion]
       ),
    _dltvrlrsResponseStatus ::
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

-- | Creates a value of 'DescribeLaunchTemplateVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dltvrlrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dltvrlrsLaunchTemplateVersions' - Information about the launch template versions.
--
-- * 'dltvrlrsResponseStatus' - -- | The response status code.
describeLaunchTemplateVersionsResponse ::
  -- | 'dltvrlrsResponseStatus'
  Int ->
  DescribeLaunchTemplateVersionsResponse
describeLaunchTemplateVersionsResponse
  pResponseStatus_ =
    DescribeLaunchTemplateVersionsResponse'
      { _dltvrlrsNextToken =
          Nothing,
        _dltvrlrsLaunchTemplateVersions =
          Nothing,
        _dltvrlrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dltvrlrsNextToken :: Lens' DescribeLaunchTemplateVersionsResponse (Maybe Text)
dltvrlrsNextToken = lens _dltvrlrsNextToken (\s a -> s {_dltvrlrsNextToken = a})

-- | Information about the launch template versions.
dltvrlrsLaunchTemplateVersions :: Lens' DescribeLaunchTemplateVersionsResponse [LaunchTemplateVersion]
dltvrlrsLaunchTemplateVersions = lens _dltvrlrsLaunchTemplateVersions (\s a -> s {_dltvrlrsLaunchTemplateVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
dltvrlrsResponseStatus :: Lens' DescribeLaunchTemplateVersionsResponse Int
dltvrlrsResponseStatus = lens _dltvrlrsResponseStatus (\s a -> s {_dltvrlrsResponseStatus = a})

instance
  NFData
    DescribeLaunchTemplateVersionsResponse
