{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ComplianceItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ComplianceItem where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.ComplianceExecutionSummary
import Network.AWS.SSM.Types.ComplianceSeverity
import Network.AWS.SSM.Types.ComplianceStatus

-- | Information about the compliance as defined by the resource type. For example, for a patch resource type, @Items@ includes information about the PatchSeverity, Classification, and so on.
--
--
--
-- /See:/ 'complianceItem' smart constructor.
data ComplianceItem = ComplianceItem'
  { _ciiResourceId ::
      !(Maybe Text),
    _ciiStatus :: !(Maybe ComplianceStatus),
    _ciiSeverity ::
      !(Maybe ComplianceSeverity),
    _ciiTitle :: !(Maybe Text),
    _ciiId :: !(Maybe Text),
    _ciiComplianceType :: !(Maybe Text),
    _ciiResourceType :: !(Maybe Text),
    _ciiDetails :: !(Maybe (Map Text Text)),
    _ciiExecutionSummary ::
      !(Maybe ComplianceExecutionSummary)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ComplianceItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciiResourceId' - An ID for the resource. For a managed instance, this is the instance ID.
--
-- * 'ciiStatus' - The status of the compliance item. An item is either COMPLIANT, NON_COMPLIANT, or an empty string (for Windows patches that aren't applicable).
--
-- * 'ciiSeverity' - The severity of the compliance status. Severity can be one of the following: Critical, High, Medium, Low, Informational, Unspecified.
--
-- * 'ciiTitle' - A title for the compliance item. For example, if the compliance item is a Windows patch, the title could be the title of the KB article for the patch; for example: Security Update for Active Directory Federation Services.
--
-- * 'ciiId' - An ID for the compliance item. For example, if the compliance item is a Windows patch, the ID could be the number of the KB article; for example: KB4010320.
--
-- * 'ciiComplianceType' - The compliance type. For example, Association (for a State Manager association), Patch, or Custom:@string@ are all valid compliance types.
--
-- * 'ciiResourceType' - The type of resource. @ManagedInstance@ is currently the only supported resource type.
--
-- * 'ciiDetails' - A "Key": "Value" tag combination for the compliance item.
--
-- * 'ciiExecutionSummary' - A summary for the compliance item. The summary includes an execution ID, the execution type (for example, command), and the execution time.
complianceItem ::
  ComplianceItem
complianceItem =
  ComplianceItem'
    { _ciiResourceId = Nothing,
      _ciiStatus = Nothing,
      _ciiSeverity = Nothing,
      _ciiTitle = Nothing,
      _ciiId = Nothing,
      _ciiComplianceType = Nothing,
      _ciiResourceType = Nothing,
      _ciiDetails = Nothing,
      _ciiExecutionSummary = Nothing
    }

-- | An ID for the resource. For a managed instance, this is the instance ID.
ciiResourceId :: Lens' ComplianceItem (Maybe Text)
ciiResourceId = lens _ciiResourceId (\s a -> s {_ciiResourceId = a})

-- | The status of the compliance item. An item is either COMPLIANT, NON_COMPLIANT, or an empty string (for Windows patches that aren't applicable).
ciiStatus :: Lens' ComplianceItem (Maybe ComplianceStatus)
ciiStatus = lens _ciiStatus (\s a -> s {_ciiStatus = a})

-- | The severity of the compliance status. Severity can be one of the following: Critical, High, Medium, Low, Informational, Unspecified.
ciiSeverity :: Lens' ComplianceItem (Maybe ComplianceSeverity)
ciiSeverity = lens _ciiSeverity (\s a -> s {_ciiSeverity = a})

-- | A title for the compliance item. For example, if the compliance item is a Windows patch, the title could be the title of the KB article for the patch; for example: Security Update for Active Directory Federation Services.
ciiTitle :: Lens' ComplianceItem (Maybe Text)
ciiTitle = lens _ciiTitle (\s a -> s {_ciiTitle = a})

-- | An ID for the compliance item. For example, if the compliance item is a Windows patch, the ID could be the number of the KB article; for example: KB4010320.
ciiId :: Lens' ComplianceItem (Maybe Text)
ciiId = lens _ciiId (\s a -> s {_ciiId = a})

-- | The compliance type. For example, Association (for a State Manager association), Patch, or Custom:@string@ are all valid compliance types.
ciiComplianceType :: Lens' ComplianceItem (Maybe Text)
ciiComplianceType = lens _ciiComplianceType (\s a -> s {_ciiComplianceType = a})

-- | The type of resource. @ManagedInstance@ is currently the only supported resource type.
ciiResourceType :: Lens' ComplianceItem (Maybe Text)
ciiResourceType = lens _ciiResourceType (\s a -> s {_ciiResourceType = a})

-- | A "Key": "Value" tag combination for the compliance item.
ciiDetails :: Lens' ComplianceItem (HashMap Text Text)
ciiDetails = lens _ciiDetails (\s a -> s {_ciiDetails = a}) . _Default . _Map

-- | A summary for the compliance item. The summary includes an execution ID, the execution type (for example, command), and the execution time.
ciiExecutionSummary :: Lens' ComplianceItem (Maybe ComplianceExecutionSummary)
ciiExecutionSummary = lens _ciiExecutionSummary (\s a -> s {_ciiExecutionSummary = a})

instance FromJSON ComplianceItem where
  parseJSON =
    withObject
      "ComplianceItem"
      ( \x ->
          ComplianceItem'
            <$> (x .:? "ResourceId")
            <*> (x .:? "Status")
            <*> (x .:? "Severity")
            <*> (x .:? "Title")
            <*> (x .:? "Id")
            <*> (x .:? "ComplianceType")
            <*> (x .:? "ResourceType")
            <*> (x .:? "Details" .!= mempty)
            <*> (x .:? "ExecutionSummary")
      )

instance Hashable ComplianceItem

instance NFData ComplianceItem
