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
-- Module      : Network.AWS.WorkMail.PutAccessControlRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new access control rule for the specified organization. The rule allows or denies access to the organization for the specified IPv4 addresses, access protocol actions, and user IDs. Adding a new rule with the same name as an existing rule replaces the older rule.
module Network.AWS.WorkMail.PutAccessControlRule
  ( -- * Creating a Request
    putAccessControlRule,
    PutAccessControlRule,

    -- * Request Lenses
    pacrNotIPRanges,
    pacrIPRanges,
    pacrActions,
    pacrUserIds,
    pacrNotActions,
    pacrNotUserIds,
    pacrName,
    pacrEffect,
    pacrDescription,
    pacrOrganizationId,

    -- * Destructuring the Response
    putAccessControlRuleResponse,
    PutAccessControlRuleResponse,

    -- * Response Lenses
    pacrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'putAccessControlRule' smart constructor.
data PutAccessControlRule = PutAccessControlRule'
  { _pacrNotIPRanges ::
      !(Maybe [Text]),
    _pacrIPRanges ::
      !(Maybe [Text]),
    _pacrActions ::
      !(Maybe [Text]),
    _pacrUserIds ::
      !(Maybe [Text]),
    _pacrNotActions ::
      !(Maybe [Text]),
    _pacrNotUserIds ::
      !(Maybe [Text]),
    _pacrName :: !Text,
    _pacrEffect ::
      !AccessControlRuleEffect,
    _pacrDescription :: !Text,
    _pacrOrganizationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutAccessControlRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pacrNotIPRanges' - IPv4 CIDR ranges to exclude from the rule.
--
-- * 'pacrIPRanges' - IPv4 CIDR ranges to include in the rule.
--
-- * 'pacrActions' - Access protocol actions to include in the rule. Valid values include @ActiveSync@ , @AutoDiscover@ , @EWS@ , @IMAP@ , @SMTP@ , @WindowsOutlook@ , and @WebMail@ .
--
-- * 'pacrUserIds' - User IDs to include in the rule.
--
-- * 'pacrNotActions' - Access protocol actions to exclude from the rule. Valid values include @ActiveSync@ , @AutoDiscover@ , @EWS@ , @IMAP@ , @SMTP@ , @WindowsOutlook@ , and @WebMail@ .
--
-- * 'pacrNotUserIds' - User IDs to exclude from the rule.
--
-- * 'pacrName' - The rule name.
--
-- * 'pacrEffect' - The rule effect.
--
-- * 'pacrDescription' - The rule description.
--
-- * 'pacrOrganizationId' - The identifier of the organization.
putAccessControlRule ::
  -- | 'pacrName'
  Text ->
  -- | 'pacrEffect'
  AccessControlRuleEffect ->
  -- | 'pacrDescription'
  Text ->
  -- | 'pacrOrganizationId'
  Text ->
  PutAccessControlRule
putAccessControlRule
  pName_
  pEffect_
  pDescription_
  pOrganizationId_ =
    PutAccessControlRule'
      { _pacrNotIPRanges = Nothing,
        _pacrIPRanges = Nothing,
        _pacrActions = Nothing,
        _pacrUserIds = Nothing,
        _pacrNotActions = Nothing,
        _pacrNotUserIds = Nothing,
        _pacrName = pName_,
        _pacrEffect = pEffect_,
        _pacrDescription = pDescription_,
        _pacrOrganizationId = pOrganizationId_
      }

-- | IPv4 CIDR ranges to exclude from the rule.
pacrNotIPRanges :: Lens' PutAccessControlRule [Text]
pacrNotIPRanges = lens _pacrNotIPRanges (\s a -> s {_pacrNotIPRanges = a}) . _Default . _Coerce

-- | IPv4 CIDR ranges to include in the rule.
pacrIPRanges :: Lens' PutAccessControlRule [Text]
pacrIPRanges = lens _pacrIPRanges (\s a -> s {_pacrIPRanges = a}) . _Default . _Coerce

-- | Access protocol actions to include in the rule. Valid values include @ActiveSync@ , @AutoDiscover@ , @EWS@ , @IMAP@ , @SMTP@ , @WindowsOutlook@ , and @WebMail@ .
pacrActions :: Lens' PutAccessControlRule [Text]
pacrActions = lens _pacrActions (\s a -> s {_pacrActions = a}) . _Default . _Coerce

-- | User IDs to include in the rule.
pacrUserIds :: Lens' PutAccessControlRule [Text]
pacrUserIds = lens _pacrUserIds (\s a -> s {_pacrUserIds = a}) . _Default . _Coerce

-- | Access protocol actions to exclude from the rule. Valid values include @ActiveSync@ , @AutoDiscover@ , @EWS@ , @IMAP@ , @SMTP@ , @WindowsOutlook@ , and @WebMail@ .
pacrNotActions :: Lens' PutAccessControlRule [Text]
pacrNotActions = lens _pacrNotActions (\s a -> s {_pacrNotActions = a}) . _Default . _Coerce

-- | User IDs to exclude from the rule.
pacrNotUserIds :: Lens' PutAccessControlRule [Text]
pacrNotUserIds = lens _pacrNotUserIds (\s a -> s {_pacrNotUserIds = a}) . _Default . _Coerce

-- | The rule name.
pacrName :: Lens' PutAccessControlRule Text
pacrName = lens _pacrName (\s a -> s {_pacrName = a})

-- | The rule effect.
pacrEffect :: Lens' PutAccessControlRule AccessControlRuleEffect
pacrEffect = lens _pacrEffect (\s a -> s {_pacrEffect = a})

-- | The rule description.
pacrDescription :: Lens' PutAccessControlRule Text
pacrDescription = lens _pacrDescription (\s a -> s {_pacrDescription = a})

-- | The identifier of the organization.
pacrOrganizationId :: Lens' PutAccessControlRule Text
pacrOrganizationId = lens _pacrOrganizationId (\s a -> s {_pacrOrganizationId = a})

instance AWSRequest PutAccessControlRule where
  type
    Rs PutAccessControlRule =
      PutAccessControlRuleResponse
  request = postJSON workMail
  response =
    receiveEmpty
      ( \s h x ->
          PutAccessControlRuleResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable PutAccessControlRule

instance NFData PutAccessControlRule

instance ToHeaders PutAccessControlRule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkMailService.PutAccessControlRule" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutAccessControlRule where
  toJSON PutAccessControlRule' {..} =
    object
      ( catMaybes
          [ ("NotIpRanges" .=) <$> _pacrNotIPRanges,
            ("IpRanges" .=) <$> _pacrIPRanges,
            ("Actions" .=) <$> _pacrActions,
            ("UserIds" .=) <$> _pacrUserIds,
            ("NotActions" .=) <$> _pacrNotActions,
            ("NotUserIds" .=) <$> _pacrNotUserIds,
            Just ("Name" .= _pacrName),
            Just ("Effect" .= _pacrEffect),
            Just ("Description" .= _pacrDescription),
            Just ("OrganizationId" .= _pacrOrganizationId)
          ]
      )

instance ToPath PutAccessControlRule where
  toPath = const "/"

instance ToQuery PutAccessControlRule where
  toQuery = const mempty

-- | /See:/ 'putAccessControlRuleResponse' smart constructor.
newtype PutAccessControlRuleResponse = PutAccessControlRuleResponse'
  { _pacrrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutAccessControlRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pacrrrsResponseStatus' - -- | The response status code.
putAccessControlRuleResponse ::
  -- | 'pacrrrsResponseStatus'
  Int ->
  PutAccessControlRuleResponse
putAccessControlRuleResponse pResponseStatus_ =
  PutAccessControlRuleResponse'
    { _pacrrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
pacrrrsResponseStatus :: Lens' PutAccessControlRuleResponse Int
pacrrrsResponseStatus = lens _pacrrrsResponseStatus (\s a -> s {_pacrrrsResponseStatus = a})

instance NFData PutAccessControlRuleResponse
