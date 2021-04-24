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
-- Module      : Network.AWS.EC2.DescribeFpgaImages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the Amazon FPGA Images (AFIs) available to you. These include public AFIs, private AFIs that you own, and AFIs owned by other AWS accounts for which you have load permissions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeFpgaImages
  ( -- * Creating a Request
    describeFpgaImages,
    DescribeFpgaImages,

    -- * Request Lenses
    dfiNextToken,
    dfiDryRun,
    dfiMaxResults,
    dfiOwners,
    dfiFpgaImageIds,
    dfiFilters,

    -- * Destructuring the Response
    describeFpgaImagesResponse,
    DescribeFpgaImagesResponse,

    -- * Response Lenses
    dfirfrsNextToken,
    dfirfrsFpgaImages,
    dfirfrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeFpgaImages' smart constructor.
data DescribeFpgaImages = DescribeFpgaImages'
  { _dfiNextToken ::
      !(Maybe Text),
    _dfiDryRun :: !(Maybe Bool),
    _dfiMaxResults :: !(Maybe Nat),
    _dfiOwners :: !(Maybe [Text]),
    _dfiFpgaImageIds ::
      !(Maybe [Text]),
    _dfiFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeFpgaImages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfiNextToken' - The token to retrieve the next page of results.
--
-- * 'dfiDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dfiMaxResults' - The maximum number of results to return in a single call.
--
-- * 'dfiOwners' - Filters the AFI by owner. Specify an AWS account ID, @self@ (owner is the sender of the request), or an AWS owner alias (valid values are @amazon@ | @aws-marketplace@ ).
--
-- * 'dfiFpgaImageIds' - The AFI IDs.
--
-- * 'dfiFilters' - The filters.     * @create-time@ - The creation time of the AFI.     * @fpga-image-id@ - The FPGA image identifier (AFI ID).     * @fpga-image-global-id@ - The global FPGA image identifier (AGFI ID).     * @name@ - The name of the AFI.     * @owner-id@ - The AWS account ID of the AFI owner.     * @product-code@ - The product code.     * @shell-version@ - The version of the AWS Shell that was used to create the bitstream.     * @state@ - The state of the AFI (@pending@ | @failed@ | @available@ | @unavailable@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @update-time@ - The time of the most recent update.
describeFpgaImages ::
  DescribeFpgaImages
describeFpgaImages =
  DescribeFpgaImages'
    { _dfiNextToken = Nothing,
      _dfiDryRun = Nothing,
      _dfiMaxResults = Nothing,
      _dfiOwners = Nothing,
      _dfiFpgaImageIds = Nothing,
      _dfiFilters = Nothing
    }

-- | The token to retrieve the next page of results.
dfiNextToken :: Lens' DescribeFpgaImages (Maybe Text)
dfiNextToken = lens _dfiNextToken (\s a -> s {_dfiNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dfiDryRun :: Lens' DescribeFpgaImages (Maybe Bool)
dfiDryRun = lens _dfiDryRun (\s a -> s {_dfiDryRun = a})

-- | The maximum number of results to return in a single call.
dfiMaxResults :: Lens' DescribeFpgaImages (Maybe Natural)
dfiMaxResults = lens _dfiMaxResults (\s a -> s {_dfiMaxResults = a}) . mapping _Nat

-- | Filters the AFI by owner. Specify an AWS account ID, @self@ (owner is the sender of the request), or an AWS owner alias (valid values are @amazon@ | @aws-marketplace@ ).
dfiOwners :: Lens' DescribeFpgaImages [Text]
dfiOwners = lens _dfiOwners (\s a -> s {_dfiOwners = a}) . _Default . _Coerce

-- | The AFI IDs.
dfiFpgaImageIds :: Lens' DescribeFpgaImages [Text]
dfiFpgaImageIds = lens _dfiFpgaImageIds (\s a -> s {_dfiFpgaImageIds = a}) . _Default . _Coerce

-- | The filters.     * @create-time@ - The creation time of the AFI.     * @fpga-image-id@ - The FPGA image identifier (AFI ID).     * @fpga-image-global-id@ - The global FPGA image identifier (AGFI ID).     * @name@ - The name of the AFI.     * @owner-id@ - The AWS account ID of the AFI owner.     * @product-code@ - The product code.     * @shell-version@ - The version of the AWS Shell that was used to create the bitstream.     * @state@ - The state of the AFI (@pending@ | @failed@ | @available@ | @unavailable@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @update-time@ - The time of the most recent update.
dfiFilters :: Lens' DescribeFpgaImages [Filter]
dfiFilters = lens _dfiFilters (\s a -> s {_dfiFilters = a}) . _Default . _Coerce

instance AWSPager DescribeFpgaImages where
  page rq rs
    | stop (rs ^. dfirfrsNextToken) = Nothing
    | stop (rs ^. dfirfrsFpgaImages) = Nothing
    | otherwise =
      Just $ rq & dfiNextToken .~ rs ^. dfirfrsNextToken

instance AWSRequest DescribeFpgaImages where
  type
    Rs DescribeFpgaImages =
      DescribeFpgaImagesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeFpgaImagesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "fpgaImageSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeFpgaImages

instance NFData DescribeFpgaImages

instance ToHeaders DescribeFpgaImages where
  toHeaders = const mempty

instance ToPath DescribeFpgaImages where
  toPath = const "/"

instance ToQuery DescribeFpgaImages where
  toQuery DescribeFpgaImages' {..} =
    mconcat
      [ "Action" =: ("DescribeFpgaImages" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dfiNextToken,
        "DryRun" =: _dfiDryRun,
        "MaxResults" =: _dfiMaxResults,
        toQuery (toQueryList "Owner" <$> _dfiOwners),
        toQuery
          (toQueryList "FpgaImageId" <$> _dfiFpgaImageIds),
        toQuery (toQueryList "Filter" <$> _dfiFilters)
      ]

-- | /See:/ 'describeFpgaImagesResponse' smart constructor.
data DescribeFpgaImagesResponse = DescribeFpgaImagesResponse'
  { _dfirfrsNextToken ::
      !(Maybe Text),
    _dfirfrsFpgaImages ::
      !( Maybe
           [FpgaImage]
       ),
    _dfirfrsResponseStatus ::
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

-- | Creates a value of 'DescribeFpgaImagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfirfrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dfirfrsFpgaImages' - Information about the FPGA images.
--
-- * 'dfirfrsResponseStatus' - -- | The response status code.
describeFpgaImagesResponse ::
  -- | 'dfirfrsResponseStatus'
  Int ->
  DescribeFpgaImagesResponse
describeFpgaImagesResponse pResponseStatus_ =
  DescribeFpgaImagesResponse'
    { _dfirfrsNextToken =
        Nothing,
      _dfirfrsFpgaImages = Nothing,
      _dfirfrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dfirfrsNextToken :: Lens' DescribeFpgaImagesResponse (Maybe Text)
dfirfrsNextToken = lens _dfirfrsNextToken (\s a -> s {_dfirfrsNextToken = a})

-- | Information about the FPGA images.
dfirfrsFpgaImages :: Lens' DescribeFpgaImagesResponse [FpgaImage]
dfirfrsFpgaImages = lens _dfirfrsFpgaImages (\s a -> s {_dfirfrsFpgaImages = a}) . _Default . _Coerce

-- | -- | The response status code.
dfirfrsResponseStatus :: Lens' DescribeFpgaImagesResponse Int
dfirfrsResponseStatus = lens _dfirfrsResponseStatus (\s a -> s {_dfirfrsResponseStatus = a})

instance NFData DescribeFpgaImagesResponse
