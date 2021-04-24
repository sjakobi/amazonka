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
-- Module      : Network.AWS.EC2.DescribeKeyPairs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified key pairs or all of your key pairs.
--
--
-- For more information about key pairs, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html Key Pairs> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.DescribeKeyPairs
  ( -- * Creating a Request
    describeKeyPairs,
    DescribeKeyPairs,

    -- * Request Lenses
    dkpsDryRun,
    dkpsKeyPairIds,
    dkpsFilters,
    dkpsKeyNames,

    -- * Destructuring the Response
    describeKeyPairsResponse,
    DescribeKeyPairsResponse,

    -- * Response Lenses
    dkprrsKeyPairs,
    dkprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeKeyPairs' smart constructor.
data DescribeKeyPairs = DescribeKeyPairs'
  { _dkpsDryRun ::
      !(Maybe Bool),
    _dkpsKeyPairIds :: !(Maybe [Text]),
    _dkpsFilters :: !(Maybe [Filter]),
    _dkpsKeyNames :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeKeyPairs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkpsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dkpsKeyPairIds' - The IDs of the key pairs.
--
-- * 'dkpsFilters' - The filters.     * @key-pair-id@ - The ID of the key pair.     * @fingerprint@ - The fingerprint of the key pair.     * @key-name@ - The name of the key pair.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.
--
-- * 'dkpsKeyNames' - The key pair names. Default: Describes all your key pairs.
describeKeyPairs ::
  DescribeKeyPairs
describeKeyPairs =
  DescribeKeyPairs'
    { _dkpsDryRun = Nothing,
      _dkpsKeyPairIds = Nothing,
      _dkpsFilters = Nothing,
      _dkpsKeyNames = Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dkpsDryRun :: Lens' DescribeKeyPairs (Maybe Bool)
dkpsDryRun = lens _dkpsDryRun (\s a -> s {_dkpsDryRun = a})

-- | The IDs of the key pairs.
dkpsKeyPairIds :: Lens' DescribeKeyPairs [Text]
dkpsKeyPairIds = lens _dkpsKeyPairIds (\s a -> s {_dkpsKeyPairIds = a}) . _Default . _Coerce

-- | The filters.     * @key-pair-id@ - The ID of the key pair.     * @fingerprint@ - The fingerprint of the key pair.     * @key-name@ - The name of the key pair.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.
dkpsFilters :: Lens' DescribeKeyPairs [Filter]
dkpsFilters = lens _dkpsFilters (\s a -> s {_dkpsFilters = a}) . _Default . _Coerce

-- | The key pair names. Default: Describes all your key pairs.
dkpsKeyNames :: Lens' DescribeKeyPairs [Text]
dkpsKeyNames = lens _dkpsKeyNames (\s a -> s {_dkpsKeyNames = a}) . _Default . _Coerce

instance AWSRequest DescribeKeyPairs where
  type Rs DescribeKeyPairs = DescribeKeyPairsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeKeyPairsResponse'
            <$> ( x .@? "keySet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeKeyPairs

instance NFData DescribeKeyPairs

instance ToHeaders DescribeKeyPairs where
  toHeaders = const mempty

instance ToPath DescribeKeyPairs where
  toPath = const "/"

instance ToQuery DescribeKeyPairs where
  toQuery DescribeKeyPairs' {..} =
    mconcat
      [ "Action" =: ("DescribeKeyPairs" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dkpsDryRun,
        toQuery
          (toQueryList "KeyPairId" <$> _dkpsKeyPairIds),
        toQuery (toQueryList "Filter" <$> _dkpsFilters),
        toQuery (toQueryList "KeyName" <$> _dkpsKeyNames)
      ]

-- | /See:/ 'describeKeyPairsResponse' smart constructor.
data DescribeKeyPairsResponse = DescribeKeyPairsResponse'
  { _dkprrsKeyPairs ::
      !( Maybe
           [KeyPairInfo]
       ),
    _dkprrsResponseStatus ::
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

-- | Creates a value of 'DescribeKeyPairsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkprrsKeyPairs' - Information about the key pairs.
--
-- * 'dkprrsResponseStatus' - -- | The response status code.
describeKeyPairsResponse ::
  -- | 'dkprrsResponseStatus'
  Int ->
  DescribeKeyPairsResponse
describeKeyPairsResponse pResponseStatus_ =
  DescribeKeyPairsResponse'
    { _dkprrsKeyPairs =
        Nothing,
      _dkprrsResponseStatus = pResponseStatus_
    }

-- | Information about the key pairs.
dkprrsKeyPairs :: Lens' DescribeKeyPairsResponse [KeyPairInfo]
dkprrsKeyPairs = lens _dkprrsKeyPairs (\s a -> s {_dkprrsKeyPairs = a}) . _Default . _Coerce

-- | -- | The response status code.
dkprrsResponseStatus :: Lens' DescribeKeyPairsResponse Int
dkprrsResponseStatus = lens _dkprrsResponseStatus (\s a -> s {_dkprrsResponseStatus = a})

instance NFData DescribeKeyPairsResponse
