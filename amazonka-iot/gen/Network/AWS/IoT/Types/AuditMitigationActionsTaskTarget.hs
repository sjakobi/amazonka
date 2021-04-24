{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AuditMitigationActionsTaskTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditMitigationActionsTaskTarget where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Used in MitigationActionParams, this information identifies the target findings to which the mitigation actions are applied. Only one entry appears.
--
--
--
-- /See:/ 'auditMitigationActionsTaskTarget' smart constructor.
data AuditMitigationActionsTaskTarget = AuditMitigationActionsTaskTarget'
  { _amattFindingIds ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _amattAuditTaskId ::
      !( Maybe
           Text
       ),
    _amattAuditCheckToReasonCodeFilter ::
      !( Maybe
           ( Map
               Text
               ( List1
                   Text
               )
           )
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

-- | Creates a value of 'AuditMitigationActionsTaskTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amattFindingIds' - If the task will apply a mitigation action to one or more listed findings, this value uniquely identifies those findings.
--
-- * 'amattAuditTaskId' - If the task will apply a mitigation action to findings from a specific audit, this value uniquely identifies the audit.
--
-- * 'amattAuditCheckToReasonCodeFilter' - Specifies a filter in the form of an audit check and set of reason codes that identify the findings from the audit to which the audit mitigation actions task apply.
auditMitigationActionsTaskTarget ::
  AuditMitigationActionsTaskTarget
auditMitigationActionsTaskTarget =
  AuditMitigationActionsTaskTarget'
    { _amattFindingIds =
        Nothing,
      _amattAuditTaskId = Nothing,
      _amattAuditCheckToReasonCodeFilter =
        Nothing
    }

-- | If the task will apply a mitigation action to one or more listed findings, this value uniquely identifies those findings.
amattFindingIds :: Lens' AuditMitigationActionsTaskTarget (Maybe (NonEmpty Text))
amattFindingIds = lens _amattFindingIds (\s a -> s {_amattFindingIds = a}) . mapping _List1

-- | If the task will apply a mitigation action to findings from a specific audit, this value uniquely identifies the audit.
amattAuditTaskId :: Lens' AuditMitigationActionsTaskTarget (Maybe Text)
amattAuditTaskId = lens _amattAuditTaskId (\s a -> s {_amattAuditTaskId = a})

-- | Specifies a filter in the form of an audit check and set of reason codes that identify the findings from the audit to which the audit mitigation actions task apply.
amattAuditCheckToReasonCodeFilter :: Lens' AuditMitigationActionsTaskTarget (HashMap Text (NonEmpty Text))
amattAuditCheckToReasonCodeFilter = lens _amattAuditCheckToReasonCodeFilter (\s a -> s {_amattAuditCheckToReasonCodeFilter = a}) . _Default . _Map

instance FromJSON AuditMitigationActionsTaskTarget where
  parseJSON =
    withObject
      "AuditMitigationActionsTaskTarget"
      ( \x ->
          AuditMitigationActionsTaskTarget'
            <$> (x .:? "findingIds")
            <*> (x .:? "auditTaskId")
            <*> (x .:? "auditCheckToReasonCodeFilter" .!= mempty)
      )

instance Hashable AuditMitigationActionsTaskTarget

instance NFData AuditMitigationActionsTaskTarget

instance ToJSON AuditMitigationActionsTaskTarget where
  toJSON AuditMitigationActionsTaskTarget' {..} =
    object
      ( catMaybes
          [ ("findingIds" .=) <$> _amattFindingIds,
            ("auditTaskId" .=) <$> _amattAuditTaskId,
            ("auditCheckToReasonCodeFilter" .=)
              <$> _amattAuditCheckToReasonCodeFilter
          ]
      )
