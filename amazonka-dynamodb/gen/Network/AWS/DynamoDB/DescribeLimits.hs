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
-- Module      : Network.AWS.DynamoDB.DescribeLimits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current provisioned-capacity quotas for your AWS account in a Region, both for the Region as a whole and for any one DynamoDB table that you create there.
--
--
-- When you establish an AWS account, the account has initial quotas on the maximum read capacity units and write capacity units that you can provision across all of your DynamoDB tables in a given Region. Also, there are per-table quotas that apply when you create a table there. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html Service, Account, and Table Quotas> page in the /Amazon DynamoDB Developer Guide/ .
--
-- Although you can increase these quotas by filing a case at <https://console.aws.amazon.com/support/home#/ AWS Support Center> , obtaining the increase is not instantaneous. The @DescribeLimits@ action lets you write code to compare the capacity you are currently using to those quotas imposed by your account so that you have enough time to apply for an increase before you hit a quota.
--
-- For example, you could use one of the AWS SDKs to do the following:
--
--     * Call @DescribeLimits@ for a particular Region to obtain your current account quotas on provisioned capacity there.
--
--     * Create a variable to hold the aggregate read capacity units provisioned for all your tables in that Region, and one to hold the aggregate write capacity units. Zero them both.
--
--     * Call @ListTables@ to obtain a list of all your DynamoDB tables.
--
--     * For each table name listed by @ListTables@ , do the following:
--
--     * Call @DescribeTable@ with the table name.
--
--     * Use the data returned by @DescribeTable@ to add the read capacity units and write capacity units provisioned for the table itself to your variables.
--
--     * If the table has one or more global secondary indexes (GSIs), loop over these GSIs and add their provisioned capacity values to your variables as well.
--
--
--
--     * Report the account quotas for that Region returned by @DescribeLimits@ , along with the total current provisioned capacity levels you have calculated.
--
--
--
-- This will let you see whether you are getting close to your account-level quotas.
--
-- The per-table quotas apply only when you are creating a new table. They restrict the sum of the provisioned capacity of the new table itself and all its global secondary indexes.
--
-- For existing tables and their GSIs, DynamoDB doesn't let you increase provisioned capacity extremely rapidly, but the only quota that applies is that the aggregate provisioned capacity over all your tables and GSIs cannot exceed either of the per-account quotas.
--
-- The @DescribeLimits@ Request element has no content.
module Network.AWS.DynamoDB.DescribeLimits
  ( -- * Creating a Request
    describeLimits,
    DescribeLimits,

    -- * Destructuring the Response
    describeLimitsResponse,
    DescribeLimitsResponse,

    -- * Response Lenses
    dlrrsAccountMaxWriteCapacityUnits,
    dlrrsTableMaxReadCapacityUnits,
    dlrrsAccountMaxReadCapacityUnits,
    dlrrsTableMaxWriteCapacityUnits,
    dlrrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @DescribeLimits@ operation. Has no content.
--
--
--
-- /See:/ 'describeLimits' smart constructor.
data DescribeLimits = DescribeLimits'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeLimits' with the minimum fields required to make a request.
describeLimits ::
  DescribeLimits
describeLimits = DescribeLimits'

instance AWSRequest DescribeLimits where
  type Rs DescribeLimits = DescribeLimitsResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          DescribeLimitsResponse'
            <$> (x .?> "AccountMaxWriteCapacityUnits")
            <*> (x .?> "TableMaxReadCapacityUnits")
            <*> (x .?> "AccountMaxReadCapacityUnits")
            <*> (x .?> "TableMaxWriteCapacityUnits")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLimits

instance NFData DescribeLimits

instance ToHeaders DescribeLimits where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DynamoDB_20120810.DescribeLimits" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeLimits where
  toJSON = const (Object mempty)

instance ToPath DescribeLimits where
  toPath = const "/"

instance ToQuery DescribeLimits where
  toQuery = const mempty

-- | Represents the output of a @DescribeLimits@ operation.
--
--
--
-- /See:/ 'describeLimitsResponse' smart constructor.
data DescribeLimitsResponse = DescribeLimitsResponse'
  { _dlrrsAccountMaxWriteCapacityUnits ::
      !(Maybe Nat),
    _dlrrsTableMaxReadCapacityUnits ::
      !(Maybe Nat),
    _dlrrsAccountMaxReadCapacityUnits ::
      !(Maybe Nat),
    _dlrrsTableMaxWriteCapacityUnits ::
      !(Maybe Nat),
    _dlrrsResponseStatus ::
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

-- | Creates a value of 'DescribeLimitsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrrsAccountMaxWriteCapacityUnits' - The maximum total write capacity units that your account allows you to provision across all of your tables in this Region.
--
-- * 'dlrrsTableMaxReadCapacityUnits' - The maximum read capacity units that your account allows you to provision for a new table that you are creating in this Region, including the read capacity units provisioned for its global secondary indexes (GSIs).
--
-- * 'dlrrsAccountMaxReadCapacityUnits' - The maximum total read capacity units that your account allows you to provision across all of your tables in this Region.
--
-- * 'dlrrsTableMaxWriteCapacityUnits' - The maximum write capacity units that your account allows you to provision for a new table that you are creating in this Region, including the write capacity units provisioned for its global secondary indexes (GSIs).
--
-- * 'dlrrsResponseStatus' - -- | The response status code.
describeLimitsResponse ::
  -- | 'dlrrsResponseStatus'
  Int ->
  DescribeLimitsResponse
describeLimitsResponse pResponseStatus_ =
  DescribeLimitsResponse'
    { _dlrrsAccountMaxWriteCapacityUnits =
        Nothing,
      _dlrrsTableMaxReadCapacityUnits = Nothing,
      _dlrrsAccountMaxReadCapacityUnits = Nothing,
      _dlrrsTableMaxWriteCapacityUnits = Nothing,
      _dlrrsResponseStatus = pResponseStatus_
    }

-- | The maximum total write capacity units that your account allows you to provision across all of your tables in this Region.
dlrrsAccountMaxWriteCapacityUnits :: Lens' DescribeLimitsResponse (Maybe Natural)
dlrrsAccountMaxWriteCapacityUnits = lens _dlrrsAccountMaxWriteCapacityUnits (\s a -> s {_dlrrsAccountMaxWriteCapacityUnits = a}) . mapping _Nat

-- | The maximum read capacity units that your account allows you to provision for a new table that you are creating in this Region, including the read capacity units provisioned for its global secondary indexes (GSIs).
dlrrsTableMaxReadCapacityUnits :: Lens' DescribeLimitsResponse (Maybe Natural)
dlrrsTableMaxReadCapacityUnits = lens _dlrrsTableMaxReadCapacityUnits (\s a -> s {_dlrrsTableMaxReadCapacityUnits = a}) . mapping _Nat

-- | The maximum total read capacity units that your account allows you to provision across all of your tables in this Region.
dlrrsAccountMaxReadCapacityUnits :: Lens' DescribeLimitsResponse (Maybe Natural)
dlrrsAccountMaxReadCapacityUnits = lens _dlrrsAccountMaxReadCapacityUnits (\s a -> s {_dlrrsAccountMaxReadCapacityUnits = a}) . mapping _Nat

-- | The maximum write capacity units that your account allows you to provision for a new table that you are creating in this Region, including the write capacity units provisioned for its global secondary indexes (GSIs).
dlrrsTableMaxWriteCapacityUnits :: Lens' DescribeLimitsResponse (Maybe Natural)
dlrrsTableMaxWriteCapacityUnits = lens _dlrrsTableMaxWriteCapacityUnits (\s a -> s {_dlrrsTableMaxWriteCapacityUnits = a}) . mapping _Nat

-- | -- | The response status code.
dlrrsResponseStatus :: Lens' DescribeLimitsResponse Int
dlrrsResponseStatus = lens _dlrrsResponseStatus (\s a -> s {_dlrrsResponseStatus = a})

instance NFData DescribeLimitsResponse
