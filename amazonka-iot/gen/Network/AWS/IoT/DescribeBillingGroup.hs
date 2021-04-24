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
-- Module      : Network.AWS.IoT.DescribeBillingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a billing group.
module Network.AWS.IoT.DescribeBillingGroup
  ( -- * Creating a Request
    describeBillingGroup,
    DescribeBillingGroup,

    -- * Request Lenses
    dBillingGroupName,

    -- * Destructuring the Response
    describeBillingGroupResponse,
    DescribeBillingGroupResponse,

    -- * Response Lenses
    dbgrbrsBillingGroupProperties,
    dbgrbrsVersion,
    dbgrbrsBillingGroupARN,
    dbgrbrsBillingGroupId,
    dbgrbrsBillingGroupMetadata,
    dbgrbrsBillingGroupName,
    dbgrbrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeBillingGroup' smart constructor.
newtype DescribeBillingGroup = DescribeBillingGroup'
  { _dBillingGroupName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeBillingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dBillingGroupName' - The name of the billing group.
describeBillingGroup ::
  -- | 'dBillingGroupName'
  Text ->
  DescribeBillingGroup
describeBillingGroup pBillingGroupName_ =
  DescribeBillingGroup'
    { _dBillingGroupName =
        pBillingGroupName_
    }

-- | The name of the billing group.
dBillingGroupName :: Lens' DescribeBillingGroup Text
dBillingGroupName = lens _dBillingGroupName (\s a -> s {_dBillingGroupName = a})

instance AWSRequest DescribeBillingGroup where
  type
    Rs DescribeBillingGroup =
      DescribeBillingGroupResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeBillingGroupResponse'
            <$> (x .?> "billingGroupProperties")
            <*> (x .?> "version")
            <*> (x .?> "billingGroupArn")
            <*> (x .?> "billingGroupId")
            <*> (x .?> "billingGroupMetadata")
            <*> (x .?> "billingGroupName")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeBillingGroup

instance NFData DescribeBillingGroup

instance ToHeaders DescribeBillingGroup where
  toHeaders = const mempty

instance ToPath DescribeBillingGroup where
  toPath DescribeBillingGroup' {..} =
    mconcat
      ["/billing-groups/", toBS _dBillingGroupName]

instance ToQuery DescribeBillingGroup where
  toQuery = const mempty

-- | /See:/ 'describeBillingGroupResponse' smart constructor.
data DescribeBillingGroupResponse = DescribeBillingGroupResponse'
  { _dbgrbrsBillingGroupProperties ::
      !( Maybe
           BillingGroupProperties
       ),
    _dbgrbrsVersion ::
      !( Maybe
           Integer
       ),
    _dbgrbrsBillingGroupARN ::
      !(Maybe Text),
    _dbgrbrsBillingGroupId ::
      !(Maybe Text),
    _dbgrbrsBillingGroupMetadata ::
      !( Maybe
           BillingGroupMetadata
       ),
    _dbgrbrsBillingGroupName ::
      !(Maybe Text),
    _dbgrbrsResponseStatus ::
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

-- | Creates a value of 'DescribeBillingGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbgrbrsBillingGroupProperties' - The properties of the billing group.
--
-- * 'dbgrbrsVersion' - The version of the billing group.
--
-- * 'dbgrbrsBillingGroupARN' - The ARN of the billing group.
--
-- * 'dbgrbrsBillingGroupId' - The ID of the billing group.
--
-- * 'dbgrbrsBillingGroupMetadata' - Additional information about the billing group.
--
-- * 'dbgrbrsBillingGroupName' - The name of the billing group.
--
-- * 'dbgrbrsResponseStatus' - -- | The response status code.
describeBillingGroupResponse ::
  -- | 'dbgrbrsResponseStatus'
  Int ->
  DescribeBillingGroupResponse
describeBillingGroupResponse pResponseStatus_ =
  DescribeBillingGroupResponse'
    { _dbgrbrsBillingGroupProperties =
        Nothing,
      _dbgrbrsVersion = Nothing,
      _dbgrbrsBillingGroupARN = Nothing,
      _dbgrbrsBillingGroupId = Nothing,
      _dbgrbrsBillingGroupMetadata = Nothing,
      _dbgrbrsBillingGroupName = Nothing,
      _dbgrbrsResponseStatus = pResponseStatus_
    }

-- | The properties of the billing group.
dbgrbrsBillingGroupProperties :: Lens' DescribeBillingGroupResponse (Maybe BillingGroupProperties)
dbgrbrsBillingGroupProperties = lens _dbgrbrsBillingGroupProperties (\s a -> s {_dbgrbrsBillingGroupProperties = a})

-- | The version of the billing group.
dbgrbrsVersion :: Lens' DescribeBillingGroupResponse (Maybe Integer)
dbgrbrsVersion = lens _dbgrbrsVersion (\s a -> s {_dbgrbrsVersion = a})

-- | The ARN of the billing group.
dbgrbrsBillingGroupARN :: Lens' DescribeBillingGroupResponse (Maybe Text)
dbgrbrsBillingGroupARN = lens _dbgrbrsBillingGroupARN (\s a -> s {_dbgrbrsBillingGroupARN = a})

-- | The ID of the billing group.
dbgrbrsBillingGroupId :: Lens' DescribeBillingGroupResponse (Maybe Text)
dbgrbrsBillingGroupId = lens _dbgrbrsBillingGroupId (\s a -> s {_dbgrbrsBillingGroupId = a})

-- | Additional information about the billing group.
dbgrbrsBillingGroupMetadata :: Lens' DescribeBillingGroupResponse (Maybe BillingGroupMetadata)
dbgrbrsBillingGroupMetadata = lens _dbgrbrsBillingGroupMetadata (\s a -> s {_dbgrbrsBillingGroupMetadata = a})

-- | The name of the billing group.
dbgrbrsBillingGroupName :: Lens' DescribeBillingGroupResponse (Maybe Text)
dbgrbrsBillingGroupName = lens _dbgrbrsBillingGroupName (\s a -> s {_dbgrbrsBillingGroupName = a})

-- | -- | The response status code.
dbgrbrsResponseStatus :: Lens' DescribeBillingGroupResponse Int
dbgrbrsResponseStatus = lens _dbgrbrsResponseStatus (\s a -> s {_dbgrbrsResponseStatus = a})

instance NFData DescribeBillingGroupResponse
