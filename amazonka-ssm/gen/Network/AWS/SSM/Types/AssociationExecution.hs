{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationExecution where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Includes information about the specified association.
--
--
--
-- /See:/ 'associationExecution' smart constructor.
data AssociationExecution = AssociationExecution'
  { _aeStatus ::
      !(Maybe Text),
    _aeLastExecutionDate ::
      !(Maybe POSIX),
    _aeDetailedStatus ::
      !(Maybe Text),
    _aeResourceCountByStatus ::
      !(Maybe Text),
    _aeCreatedTime ::
      !(Maybe POSIX),
    _aeExecutionId ::
      !(Maybe Text),
    _aeAssociationId ::
      !(Maybe Text),
    _aeAssociationVersion ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssociationExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeStatus' - The status of the association execution.
--
-- * 'aeLastExecutionDate' - The date of the last execution.
--
-- * 'aeDetailedStatus' - Detailed status information about the execution.
--
-- * 'aeResourceCountByStatus' - An aggregate status of the resources in the execution based on the status type.
--
-- * 'aeCreatedTime' - The time the execution started.
--
-- * 'aeExecutionId' - The execution ID for the association.
--
-- * 'aeAssociationId' - The association ID.
--
-- * 'aeAssociationVersion' - The association version.
associationExecution ::
  AssociationExecution
associationExecution =
  AssociationExecution'
    { _aeStatus = Nothing,
      _aeLastExecutionDate = Nothing,
      _aeDetailedStatus = Nothing,
      _aeResourceCountByStatus = Nothing,
      _aeCreatedTime = Nothing,
      _aeExecutionId = Nothing,
      _aeAssociationId = Nothing,
      _aeAssociationVersion = Nothing
    }

-- | The status of the association execution.
aeStatus :: Lens' AssociationExecution (Maybe Text)
aeStatus = lens _aeStatus (\s a -> s {_aeStatus = a})

-- | The date of the last execution.
aeLastExecutionDate :: Lens' AssociationExecution (Maybe UTCTime)
aeLastExecutionDate = lens _aeLastExecutionDate (\s a -> s {_aeLastExecutionDate = a}) . mapping _Time

-- | Detailed status information about the execution.
aeDetailedStatus :: Lens' AssociationExecution (Maybe Text)
aeDetailedStatus = lens _aeDetailedStatus (\s a -> s {_aeDetailedStatus = a})

-- | An aggregate status of the resources in the execution based on the status type.
aeResourceCountByStatus :: Lens' AssociationExecution (Maybe Text)
aeResourceCountByStatus = lens _aeResourceCountByStatus (\s a -> s {_aeResourceCountByStatus = a})

-- | The time the execution started.
aeCreatedTime :: Lens' AssociationExecution (Maybe UTCTime)
aeCreatedTime = lens _aeCreatedTime (\s a -> s {_aeCreatedTime = a}) . mapping _Time

-- | The execution ID for the association.
aeExecutionId :: Lens' AssociationExecution (Maybe Text)
aeExecutionId = lens _aeExecutionId (\s a -> s {_aeExecutionId = a})

-- | The association ID.
aeAssociationId :: Lens' AssociationExecution (Maybe Text)
aeAssociationId = lens _aeAssociationId (\s a -> s {_aeAssociationId = a})

-- | The association version.
aeAssociationVersion :: Lens' AssociationExecution (Maybe Text)
aeAssociationVersion = lens _aeAssociationVersion (\s a -> s {_aeAssociationVersion = a})

instance FromJSON AssociationExecution where
  parseJSON =
    withObject
      "AssociationExecution"
      ( \x ->
          AssociationExecution'
            <$> (x .:? "Status")
            <*> (x .:? "LastExecutionDate")
            <*> (x .:? "DetailedStatus")
            <*> (x .:? "ResourceCountByStatus")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "ExecutionId")
            <*> (x .:? "AssociationId")
            <*> (x .:? "AssociationVersion")
      )

instance Hashable AssociationExecution

instance NFData AssociationExecution
