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
-- Module      : Network.AWS.RDS.ModifyCurrentDBClusterCapacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set the capacity of an Aurora Serverless DB cluster to a specific value.
--
--
-- Aurora Serverless scales seamlessly based on the workload on the DB cluster. In some cases, the capacity might not scale fast enough to meet a sudden change in workload, such as a large number of new transactions. Call @ModifyCurrentDBClusterCapacity@ to set the capacity explicitly.
--
-- After this call sets the DB cluster capacity, Aurora Serverless can automatically scale the DB cluster based on the cooldown period for scaling up and the cooldown period for scaling down.
--
-- For more information about Aurora Serverless, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html Using Amazon Aurora Serverless> in the /Amazon Aurora User Guide/ .
--
-- /Important:/ If you call @ModifyCurrentDBClusterCapacity@ with the default @TimeoutAction@ , connections that prevent Aurora Serverless from finding a scaling point might be dropped. For more information about scaling points, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling Autoscaling for Aurora Serverless> in the /Amazon Aurora User Guide/ .
module Network.AWS.RDS.ModifyCurrentDBClusterCapacity
  ( -- * Creating a Request
    modifyCurrentDBClusterCapacity,
    ModifyCurrentDBClusterCapacity,

    -- * Request Lenses
    mcdccTimeoutAction,
    mcdccCapacity,
    mcdccSecondsBeforeTimeout,
    mcdccDBClusterIdentifier,

    -- * Destructuring the Response
    modifyCurrentDBClusterCapacityResponse,
    ModifyCurrentDBClusterCapacityResponse,

    -- * Response Lenses
    mcdccrrsPendingCapacity,
    mcdccrrsTimeoutAction,
    mcdccrrsDBClusterIdentifier,
    mcdccrrsSecondsBeforeTimeout,
    mcdccrrsCurrentCapacity,
    mcdccrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyCurrentDBClusterCapacity' smart constructor.
data ModifyCurrentDBClusterCapacity = ModifyCurrentDBClusterCapacity'
  { _mcdccTimeoutAction ::
      !( Maybe
           Text
       ),
    _mcdccCapacity ::
      !( Maybe
           Int
       ),
    _mcdccSecondsBeforeTimeout ::
      !( Maybe
           Int
       ),
    _mcdccDBClusterIdentifier ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyCurrentDBClusterCapacity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdccTimeoutAction' - The action to take when the timeout is reached, either @ForceApplyCapacityChange@ or @RollbackCapacityChange@ . @ForceApplyCapacityChange@ , the default, sets the capacity to the specified value as soon as possible. @RollbackCapacityChange@ ignores the capacity change if a scaling point isn't found in the timeout period.
--
-- * 'mcdccCapacity' - The DB cluster capacity. When you change the capacity of a paused Aurora Serverless DB cluster, it automatically resumes. Constraints:     * For Aurora MySQL, valid capacity values are @1@ , @2@ , @4@ , @8@ , @16@ , @32@ , @64@ , @128@ , and @256@ .     * For Aurora PostgreSQL, valid capacity values are @2@ , @4@ , @8@ , @16@ , @32@ , @64@ , @192@ , and @384@ .
--
-- * 'mcdccSecondsBeforeTimeout' - The amount of time, in seconds, that Aurora Serverless tries to find a scaling point to perform seamless scaling before enforcing the timeout action. The default is 300.     * Value must be from 10 through 600.
--
-- * 'mcdccDBClusterIdentifier' - The DB cluster identifier for the cluster being modified. This parameter isn't case-sensitive. Constraints:     * Must match the identifier of an existing DB cluster.
modifyCurrentDBClusterCapacity ::
  -- | 'mcdccDBClusterIdentifier'
  Text ->
  ModifyCurrentDBClusterCapacity
modifyCurrentDBClusterCapacity pDBClusterIdentifier_ =
  ModifyCurrentDBClusterCapacity'
    { _mcdccTimeoutAction =
        Nothing,
      _mcdccCapacity = Nothing,
      _mcdccSecondsBeforeTimeout = Nothing,
      _mcdccDBClusterIdentifier =
        pDBClusterIdentifier_
    }

-- | The action to take when the timeout is reached, either @ForceApplyCapacityChange@ or @RollbackCapacityChange@ . @ForceApplyCapacityChange@ , the default, sets the capacity to the specified value as soon as possible. @RollbackCapacityChange@ ignores the capacity change if a scaling point isn't found in the timeout period.
mcdccTimeoutAction :: Lens' ModifyCurrentDBClusterCapacity (Maybe Text)
mcdccTimeoutAction = lens _mcdccTimeoutAction (\s a -> s {_mcdccTimeoutAction = a})

-- | The DB cluster capacity. When you change the capacity of a paused Aurora Serverless DB cluster, it automatically resumes. Constraints:     * For Aurora MySQL, valid capacity values are @1@ , @2@ , @4@ , @8@ , @16@ , @32@ , @64@ , @128@ , and @256@ .     * For Aurora PostgreSQL, valid capacity values are @2@ , @4@ , @8@ , @16@ , @32@ , @64@ , @192@ , and @384@ .
mcdccCapacity :: Lens' ModifyCurrentDBClusterCapacity (Maybe Int)
mcdccCapacity = lens _mcdccCapacity (\s a -> s {_mcdccCapacity = a})

-- | The amount of time, in seconds, that Aurora Serverless tries to find a scaling point to perform seamless scaling before enforcing the timeout action. The default is 300.     * Value must be from 10 through 600.
mcdccSecondsBeforeTimeout :: Lens' ModifyCurrentDBClusterCapacity (Maybe Int)
mcdccSecondsBeforeTimeout = lens _mcdccSecondsBeforeTimeout (\s a -> s {_mcdccSecondsBeforeTimeout = a})

-- | The DB cluster identifier for the cluster being modified. This parameter isn't case-sensitive. Constraints:     * Must match the identifier of an existing DB cluster.
mcdccDBClusterIdentifier :: Lens' ModifyCurrentDBClusterCapacity Text
mcdccDBClusterIdentifier = lens _mcdccDBClusterIdentifier (\s a -> s {_mcdccDBClusterIdentifier = a})

instance AWSRequest ModifyCurrentDBClusterCapacity where
  type
    Rs ModifyCurrentDBClusterCapacity =
      ModifyCurrentDBClusterCapacityResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "ModifyCurrentDBClusterCapacityResult"
      ( \s h x ->
          ModifyCurrentDBClusterCapacityResponse'
            <$> (x .@? "PendingCapacity")
            <*> (x .@? "TimeoutAction")
            <*> (x .@? "DBClusterIdentifier")
            <*> (x .@? "SecondsBeforeTimeout")
            <*> (x .@? "CurrentCapacity")
            <*> (pure (fromEnum s))
      )

instance Hashable ModifyCurrentDBClusterCapacity

instance NFData ModifyCurrentDBClusterCapacity

instance ToHeaders ModifyCurrentDBClusterCapacity where
  toHeaders = const mempty

instance ToPath ModifyCurrentDBClusterCapacity where
  toPath = const "/"

instance ToQuery ModifyCurrentDBClusterCapacity where
  toQuery ModifyCurrentDBClusterCapacity' {..} =
    mconcat
      [ "Action"
          =: ("ModifyCurrentDBClusterCapacity" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "TimeoutAction" =: _mcdccTimeoutAction,
        "Capacity" =: _mcdccCapacity,
        "SecondsBeforeTimeout" =: _mcdccSecondsBeforeTimeout,
        "DBClusterIdentifier" =: _mcdccDBClusterIdentifier
      ]

-- | /See:/ 'modifyCurrentDBClusterCapacityResponse' smart constructor.
data ModifyCurrentDBClusterCapacityResponse = ModifyCurrentDBClusterCapacityResponse'
  { _mcdccrrsPendingCapacity ::
      !( Maybe
           Int
       ),
    _mcdccrrsTimeoutAction ::
      !( Maybe
           Text
       ),
    _mcdccrrsDBClusterIdentifier ::
      !( Maybe
           Text
       ),
    _mcdccrrsSecondsBeforeTimeout ::
      !( Maybe
           Int
       ),
    _mcdccrrsCurrentCapacity ::
      !( Maybe
           Int
       ),
    _mcdccrrsResponseStatus ::
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

-- | Creates a value of 'ModifyCurrentDBClusterCapacityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdccrrsPendingCapacity' - A value that specifies the capacity that the DB cluster scales to next.
--
-- * 'mcdccrrsTimeoutAction' - The timeout action of a call to @ModifyCurrentDBClusterCapacity@ , either @ForceApplyCapacityChange@ or @RollbackCapacityChange@ .
--
-- * 'mcdccrrsDBClusterIdentifier' - A user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.
--
-- * 'mcdccrrsSecondsBeforeTimeout' - The number of seconds before a call to @ModifyCurrentDBClusterCapacity@ times out.
--
-- * 'mcdccrrsCurrentCapacity' - The current capacity of the DB cluster.
--
-- * 'mcdccrrsResponseStatus' - -- | The response status code.
modifyCurrentDBClusterCapacityResponse ::
  -- | 'mcdccrrsResponseStatus'
  Int ->
  ModifyCurrentDBClusterCapacityResponse
modifyCurrentDBClusterCapacityResponse
  pResponseStatus_ =
    ModifyCurrentDBClusterCapacityResponse'
      { _mcdccrrsPendingCapacity =
          Nothing,
        _mcdccrrsTimeoutAction = Nothing,
        _mcdccrrsDBClusterIdentifier =
          Nothing,
        _mcdccrrsSecondsBeforeTimeout =
          Nothing,
        _mcdccrrsCurrentCapacity = Nothing,
        _mcdccrrsResponseStatus =
          pResponseStatus_
      }

-- | A value that specifies the capacity that the DB cluster scales to next.
mcdccrrsPendingCapacity :: Lens' ModifyCurrentDBClusterCapacityResponse (Maybe Int)
mcdccrrsPendingCapacity = lens _mcdccrrsPendingCapacity (\s a -> s {_mcdccrrsPendingCapacity = a})

-- | The timeout action of a call to @ModifyCurrentDBClusterCapacity@ , either @ForceApplyCapacityChange@ or @RollbackCapacityChange@ .
mcdccrrsTimeoutAction :: Lens' ModifyCurrentDBClusterCapacityResponse (Maybe Text)
mcdccrrsTimeoutAction = lens _mcdccrrsTimeoutAction (\s a -> s {_mcdccrrsTimeoutAction = a})

-- | A user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.
mcdccrrsDBClusterIdentifier :: Lens' ModifyCurrentDBClusterCapacityResponse (Maybe Text)
mcdccrrsDBClusterIdentifier = lens _mcdccrrsDBClusterIdentifier (\s a -> s {_mcdccrrsDBClusterIdentifier = a})

-- | The number of seconds before a call to @ModifyCurrentDBClusterCapacity@ times out.
mcdccrrsSecondsBeforeTimeout :: Lens' ModifyCurrentDBClusterCapacityResponse (Maybe Int)
mcdccrrsSecondsBeforeTimeout = lens _mcdccrrsSecondsBeforeTimeout (\s a -> s {_mcdccrrsSecondsBeforeTimeout = a})

-- | The current capacity of the DB cluster.
mcdccrrsCurrentCapacity :: Lens' ModifyCurrentDBClusterCapacityResponse (Maybe Int)
mcdccrrsCurrentCapacity = lens _mcdccrrsCurrentCapacity (\s a -> s {_mcdccrrsCurrentCapacity = a})

-- | -- | The response status code.
mcdccrrsResponseStatus :: Lens' ModifyCurrentDBClusterCapacityResponse Int
mcdccrrsResponseStatus = lens _mcdccrrsResponseStatus (\s a -> s {_mcdccrrsResponseStatus = a})

instance
  NFData
    ModifyCurrentDBClusterCapacityResponse
