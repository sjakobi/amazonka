{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.ApprovalRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ApprovalRule where

import Network.AWS.CodeCommit.Types.OriginApprovalRuleTemplate
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns information about an approval rule.
--
--
--
-- /See:/ 'approvalRule' smart constructor.
data ApprovalRule = ApprovalRule'
  { _arLastModifiedDate ::
      !(Maybe POSIX),
    _arApprovalRuleContent :: !(Maybe Text),
    _arOriginApprovalRuleTemplate ::
      !(Maybe OriginApprovalRuleTemplate),
    _arCreationDate :: !(Maybe POSIX),
    _arRuleContentSha256 :: !(Maybe Text),
    _arApprovalRuleId :: !(Maybe Text),
    _arApprovalRuleName :: !(Maybe Text),
    _arLastModifiedUser :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApprovalRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arLastModifiedDate' - The date the approval rule was most recently changed, in timestamp format.
--
-- * 'arApprovalRuleContent' - The content of the approval rule.
--
-- * 'arOriginApprovalRuleTemplate' - The approval rule template used to create the rule.
--
-- * 'arCreationDate' - The date the approval rule was created, in timestamp format.
--
-- * 'arRuleContentSha256' - The SHA-256 hash signature for the content of the approval rule.
--
-- * 'arApprovalRuleId' - The system-generated ID of the approval rule.
--
-- * 'arApprovalRuleName' - The name of the approval rule.
--
-- * 'arLastModifiedUser' - The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule.
approvalRule ::
  ApprovalRule
approvalRule =
  ApprovalRule'
    { _arLastModifiedDate = Nothing,
      _arApprovalRuleContent = Nothing,
      _arOriginApprovalRuleTemplate = Nothing,
      _arCreationDate = Nothing,
      _arRuleContentSha256 = Nothing,
      _arApprovalRuleId = Nothing,
      _arApprovalRuleName = Nothing,
      _arLastModifiedUser = Nothing
    }

-- | The date the approval rule was most recently changed, in timestamp format.
arLastModifiedDate :: Lens' ApprovalRule (Maybe UTCTime)
arLastModifiedDate = lens _arLastModifiedDate (\s a -> s {_arLastModifiedDate = a}) . mapping _Time

-- | The content of the approval rule.
arApprovalRuleContent :: Lens' ApprovalRule (Maybe Text)
arApprovalRuleContent = lens _arApprovalRuleContent (\s a -> s {_arApprovalRuleContent = a})

-- | The approval rule template used to create the rule.
arOriginApprovalRuleTemplate :: Lens' ApprovalRule (Maybe OriginApprovalRuleTemplate)
arOriginApprovalRuleTemplate = lens _arOriginApprovalRuleTemplate (\s a -> s {_arOriginApprovalRuleTemplate = a})

-- | The date the approval rule was created, in timestamp format.
arCreationDate :: Lens' ApprovalRule (Maybe UTCTime)
arCreationDate = lens _arCreationDate (\s a -> s {_arCreationDate = a}) . mapping _Time

-- | The SHA-256 hash signature for the content of the approval rule.
arRuleContentSha256 :: Lens' ApprovalRule (Maybe Text)
arRuleContentSha256 = lens _arRuleContentSha256 (\s a -> s {_arRuleContentSha256 = a})

-- | The system-generated ID of the approval rule.
arApprovalRuleId :: Lens' ApprovalRule (Maybe Text)
arApprovalRuleId = lens _arApprovalRuleId (\s a -> s {_arApprovalRuleId = a})

-- | The name of the approval rule.
arApprovalRuleName :: Lens' ApprovalRule (Maybe Text)
arApprovalRuleName = lens _arApprovalRuleName (\s a -> s {_arApprovalRuleName = a})

-- | The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule.
arLastModifiedUser :: Lens' ApprovalRule (Maybe Text)
arLastModifiedUser = lens _arLastModifiedUser (\s a -> s {_arLastModifiedUser = a})

instance FromJSON ApprovalRule where
  parseJSON =
    withObject
      "ApprovalRule"
      ( \x ->
          ApprovalRule'
            <$> (x .:? "lastModifiedDate")
            <*> (x .:? "approvalRuleContent")
            <*> (x .:? "originApprovalRuleTemplate")
            <*> (x .:? "creationDate")
            <*> (x .:? "ruleContentSha256")
            <*> (x .:? "approvalRuleId")
            <*> (x .:? "approvalRuleName")
            <*> (x .:? "lastModifiedUser")
      )

instance Hashable ApprovalRule

instance NFData ApprovalRule
