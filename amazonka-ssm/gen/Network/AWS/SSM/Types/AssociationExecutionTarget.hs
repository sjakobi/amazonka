{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationExecutionTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationExecutionTarget where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.OutputSource

-- | Includes information about the specified association execution.
--
--
--
-- /See:/ 'associationExecutionTarget' smart constructor.
data AssociationExecutionTarget = AssociationExecutionTarget'
  { _aetResourceId ::
      !(Maybe Text),
    _aetStatus ::
      !(Maybe Text),
    _aetLastExecutionDate ::
      !(Maybe POSIX),
    _aetDetailedStatus ::
      !(Maybe Text),
    _aetResourceType ::
      !(Maybe Text),
    _aetOutputSource ::
      !( Maybe
           OutputSource
       ),
    _aetExecutionId ::
      !(Maybe Text),
    _aetAssociationId ::
      !(Maybe Text),
    _aetAssociationVersion ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AssociationExecutionTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aetResourceId' - The resource ID, for example, the instance ID where the association ran.
--
-- * 'aetStatus' - The association execution status.
--
-- * 'aetLastExecutionDate' - The date of the last execution.
--
-- * 'aetDetailedStatus' - Detailed information about the execution status.
--
-- * 'aetResourceType' - The resource type, for example, instance.
--
-- * 'aetOutputSource' - The location where the association details are saved.
--
-- * 'aetExecutionId' - The execution ID.
--
-- * 'aetAssociationId' - The association ID.
--
-- * 'aetAssociationVersion' - The association version.
associationExecutionTarget ::
  AssociationExecutionTarget
associationExecutionTarget =
  AssociationExecutionTarget'
    { _aetResourceId =
        Nothing,
      _aetStatus = Nothing,
      _aetLastExecutionDate = Nothing,
      _aetDetailedStatus = Nothing,
      _aetResourceType = Nothing,
      _aetOutputSource = Nothing,
      _aetExecutionId = Nothing,
      _aetAssociationId = Nothing,
      _aetAssociationVersion = Nothing
    }

-- | The resource ID, for example, the instance ID where the association ran.
aetResourceId :: Lens' AssociationExecutionTarget (Maybe Text)
aetResourceId = lens _aetResourceId (\s a -> s {_aetResourceId = a})

-- | The association execution status.
aetStatus :: Lens' AssociationExecutionTarget (Maybe Text)
aetStatus = lens _aetStatus (\s a -> s {_aetStatus = a})

-- | The date of the last execution.
aetLastExecutionDate :: Lens' AssociationExecutionTarget (Maybe UTCTime)
aetLastExecutionDate = lens _aetLastExecutionDate (\s a -> s {_aetLastExecutionDate = a}) . mapping _Time

-- | Detailed information about the execution status.
aetDetailedStatus :: Lens' AssociationExecutionTarget (Maybe Text)
aetDetailedStatus = lens _aetDetailedStatus (\s a -> s {_aetDetailedStatus = a})

-- | The resource type, for example, instance.
aetResourceType :: Lens' AssociationExecutionTarget (Maybe Text)
aetResourceType = lens _aetResourceType (\s a -> s {_aetResourceType = a})

-- | The location where the association details are saved.
aetOutputSource :: Lens' AssociationExecutionTarget (Maybe OutputSource)
aetOutputSource = lens _aetOutputSource (\s a -> s {_aetOutputSource = a})

-- | The execution ID.
aetExecutionId :: Lens' AssociationExecutionTarget (Maybe Text)
aetExecutionId = lens _aetExecutionId (\s a -> s {_aetExecutionId = a})

-- | The association ID.
aetAssociationId :: Lens' AssociationExecutionTarget (Maybe Text)
aetAssociationId = lens _aetAssociationId (\s a -> s {_aetAssociationId = a})

-- | The association version.
aetAssociationVersion :: Lens' AssociationExecutionTarget (Maybe Text)
aetAssociationVersion = lens _aetAssociationVersion (\s a -> s {_aetAssociationVersion = a})

instance FromJSON AssociationExecutionTarget where
  parseJSON =
    withObject
      "AssociationExecutionTarget"
      ( \x ->
          AssociationExecutionTarget'
            <$> (x .:? "ResourceId")
            <*> (x .:? "Status")
            <*> (x .:? "LastExecutionDate")
            <*> (x .:? "DetailedStatus")
            <*> (x .:? "ResourceType")
            <*> (x .:? "OutputSource")
            <*> (x .:? "ExecutionId")
            <*> (x .:? "AssociationId")
            <*> (x .:? "AssociationVersion")
      )

instance Hashable AssociationExecutionTarget

instance NFData AssociationExecutionTarget
