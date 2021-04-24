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
-- Module      : Network.AWS.DynamoDB.UpdateGlobalTableSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates settings for a global table.
module Network.AWS.DynamoDB.UpdateGlobalTableSettings
  ( -- * Creating a Request
    updateGlobalTableSettings,
    UpdateGlobalTableSettings,

    -- * Request Lenses
    ugtsReplicaSettingsUpdate,
    ugtsGlobalTableProvisionedWriteCapacityUnits,
    ugtsGlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate,
    ugtsGlobalTableGlobalSecondaryIndexSettingsUpdate,
    ugtsGlobalTableBillingMode,
    ugtsGlobalTableName,

    -- * Destructuring the Response
    updateGlobalTableSettingsResponse,
    UpdateGlobalTableSettingsResponse,

    -- * Response Lenses
    ugtsrrsReplicaSettings,
    ugtsrrsGlobalTableName,
    ugtsrrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateGlobalTableSettings' smart constructor.
data UpdateGlobalTableSettings = UpdateGlobalTableSettings'
  { _ugtsReplicaSettingsUpdate ::
      !( Maybe
           ( List1
               ReplicaSettingsUpdate
           )
       ),
    _ugtsGlobalTableProvisionedWriteCapacityUnits ::
      !(Maybe Nat),
    _ugtsGlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate ::
      !( Maybe
           AutoScalingSettingsUpdate
       ),
    _ugtsGlobalTableGlobalSecondaryIndexSettingsUpdate ::
      !( Maybe
           ( List1
               GlobalTableGlobalSecondaryIndexSettingsUpdate
           )
       ),
    _ugtsGlobalTableBillingMode ::
      !( Maybe
           BillingMode
       ),
    _ugtsGlobalTableName ::
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

-- | Creates a value of 'UpdateGlobalTableSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugtsReplicaSettingsUpdate' - Represents the settings for a global table in a Region that will be modified.
--
-- * 'ugtsGlobalTableProvisionedWriteCapacityUnits' - The maximum number of writes consumed per second before DynamoDB returns a @ThrottlingException.@
--
-- * 'ugtsGlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate' - Auto scaling settings for managing provisioned write capacity for the global table.
--
-- * 'ugtsGlobalTableGlobalSecondaryIndexSettingsUpdate' - Represents the settings of a global secondary index for a global table that will be modified.
--
-- * 'ugtsGlobalTableBillingMode' - The billing mode of the global table. If @GlobalTableBillingMode@ is not specified, the global table defaults to @PROVISIONED@ capacity billing mode.     * @PROVISIONED@ - We recommend using @PROVISIONED@ for predictable workloads. @PROVISIONED@ sets the billing mode to <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual Provisioned Mode> .     * @PAY_PER_REQUEST@ - We recommend using @PAY_PER_REQUEST@ for unpredictable workloads. @PAY_PER_REQUEST@ sets the billing mode to <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand On-Demand Mode> .
--
-- * 'ugtsGlobalTableName' - The name of the global table
updateGlobalTableSettings ::
  -- | 'ugtsGlobalTableName'
  Text ->
  UpdateGlobalTableSettings
updateGlobalTableSettings pGlobalTableName_ =
  UpdateGlobalTableSettings'
    { _ugtsReplicaSettingsUpdate =
        Nothing,
      _ugtsGlobalTableProvisionedWriteCapacityUnits =
        Nothing,
      _ugtsGlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate =
        Nothing,
      _ugtsGlobalTableGlobalSecondaryIndexSettingsUpdate =
        Nothing,
      _ugtsGlobalTableBillingMode = Nothing,
      _ugtsGlobalTableName = pGlobalTableName_
    }

-- | Represents the settings for a global table in a Region that will be modified.
ugtsReplicaSettingsUpdate :: Lens' UpdateGlobalTableSettings (Maybe (NonEmpty ReplicaSettingsUpdate))
ugtsReplicaSettingsUpdate = lens _ugtsReplicaSettingsUpdate (\s a -> s {_ugtsReplicaSettingsUpdate = a}) . mapping _List1

-- | The maximum number of writes consumed per second before DynamoDB returns a @ThrottlingException.@
ugtsGlobalTableProvisionedWriteCapacityUnits :: Lens' UpdateGlobalTableSettings (Maybe Natural)
ugtsGlobalTableProvisionedWriteCapacityUnits = lens _ugtsGlobalTableProvisionedWriteCapacityUnits (\s a -> s {_ugtsGlobalTableProvisionedWriteCapacityUnits = a}) . mapping _Nat

-- | Auto scaling settings for managing provisioned write capacity for the global table.
ugtsGlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate :: Lens' UpdateGlobalTableSettings (Maybe AutoScalingSettingsUpdate)
ugtsGlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = lens _ugtsGlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate (\s a -> s {_ugtsGlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = a})

-- | Represents the settings of a global secondary index for a global table that will be modified.
ugtsGlobalTableGlobalSecondaryIndexSettingsUpdate :: Lens' UpdateGlobalTableSettings (Maybe (NonEmpty GlobalTableGlobalSecondaryIndexSettingsUpdate))
ugtsGlobalTableGlobalSecondaryIndexSettingsUpdate = lens _ugtsGlobalTableGlobalSecondaryIndexSettingsUpdate (\s a -> s {_ugtsGlobalTableGlobalSecondaryIndexSettingsUpdate = a}) . mapping _List1

-- | The billing mode of the global table. If @GlobalTableBillingMode@ is not specified, the global table defaults to @PROVISIONED@ capacity billing mode.     * @PROVISIONED@ - We recommend using @PROVISIONED@ for predictable workloads. @PROVISIONED@ sets the billing mode to <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual Provisioned Mode> .     * @PAY_PER_REQUEST@ - We recommend using @PAY_PER_REQUEST@ for unpredictable workloads. @PAY_PER_REQUEST@ sets the billing mode to <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand On-Demand Mode> .
ugtsGlobalTableBillingMode :: Lens' UpdateGlobalTableSettings (Maybe BillingMode)
ugtsGlobalTableBillingMode = lens _ugtsGlobalTableBillingMode (\s a -> s {_ugtsGlobalTableBillingMode = a})

-- | The name of the global table
ugtsGlobalTableName :: Lens' UpdateGlobalTableSettings Text
ugtsGlobalTableName = lens _ugtsGlobalTableName (\s a -> s {_ugtsGlobalTableName = a})

instance AWSRequest UpdateGlobalTableSettings where
  type
    Rs UpdateGlobalTableSettings =
      UpdateGlobalTableSettingsResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          UpdateGlobalTableSettingsResponse'
            <$> (x .?> "ReplicaSettings" .!@ mempty)
            <*> (x .?> "GlobalTableName")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateGlobalTableSettings

instance NFData UpdateGlobalTableSettings

instance ToHeaders UpdateGlobalTableSettings where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DynamoDB_20120810.UpdateGlobalTableSettings" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON UpdateGlobalTableSettings where
  toJSON UpdateGlobalTableSettings' {..} =
    object
      ( catMaybes
          [ ("ReplicaSettingsUpdate" .=)
              <$> _ugtsReplicaSettingsUpdate,
            ("GlobalTableProvisionedWriteCapacityUnits" .=)
              <$> _ugtsGlobalTableProvisionedWriteCapacityUnits,
            ( "GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate"
                .=
            )
              <$> _ugtsGlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate,
            ("GlobalTableGlobalSecondaryIndexSettingsUpdate" .=)
              <$> _ugtsGlobalTableGlobalSecondaryIndexSettingsUpdate,
            ("GlobalTableBillingMode" .=)
              <$> _ugtsGlobalTableBillingMode,
            Just ("GlobalTableName" .= _ugtsGlobalTableName)
          ]
      )

instance ToPath UpdateGlobalTableSettings where
  toPath = const "/"

instance ToQuery UpdateGlobalTableSettings where
  toQuery = const mempty

-- | /See:/ 'updateGlobalTableSettingsResponse' smart constructor.
data UpdateGlobalTableSettingsResponse = UpdateGlobalTableSettingsResponse'
  { _ugtsrrsReplicaSettings ::
      !( Maybe
           [ReplicaSettingsDescription]
       ),
    _ugtsrrsGlobalTableName ::
      !( Maybe
           Text
       ),
    _ugtsrrsResponseStatus ::
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

-- | Creates a value of 'UpdateGlobalTableSettingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugtsrrsReplicaSettings' - The Region-specific settings for the global table.
--
-- * 'ugtsrrsGlobalTableName' - The name of the global table.
--
-- * 'ugtsrrsResponseStatus' - -- | The response status code.
updateGlobalTableSettingsResponse ::
  -- | 'ugtsrrsResponseStatus'
  Int ->
  UpdateGlobalTableSettingsResponse
updateGlobalTableSettingsResponse pResponseStatus_ =
  UpdateGlobalTableSettingsResponse'
    { _ugtsrrsReplicaSettings =
        Nothing,
      _ugtsrrsGlobalTableName = Nothing,
      _ugtsrrsResponseStatus =
        pResponseStatus_
    }

-- | The Region-specific settings for the global table.
ugtsrrsReplicaSettings :: Lens' UpdateGlobalTableSettingsResponse [ReplicaSettingsDescription]
ugtsrrsReplicaSettings = lens _ugtsrrsReplicaSettings (\s a -> s {_ugtsrrsReplicaSettings = a}) . _Default . _Coerce

-- | The name of the global table.
ugtsrrsGlobalTableName :: Lens' UpdateGlobalTableSettingsResponse (Maybe Text)
ugtsrrsGlobalTableName = lens _ugtsrrsGlobalTableName (\s a -> s {_ugtsrrsGlobalTableName = a})

-- | -- | The response status code.
ugtsrrsResponseStatus :: Lens' UpdateGlobalTableSettingsResponse Int
ugtsrrsResponseStatus = lens _ugtsrrsResponseStatus (\s a -> s {_ugtsrrsResponseStatus = a})

instance NFData UpdateGlobalTableSettingsResponse
