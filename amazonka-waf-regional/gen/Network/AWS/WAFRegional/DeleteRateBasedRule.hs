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
-- Module      : Network.AWS.WAFRegional.DeleteRateBasedRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a 'RateBasedRule' . You can't delete a rule if it's still used in any @WebACL@ objects or if it still includes any predicates, such as @ByteMatchSet@ objects.
--
--
-- If you just want to remove a rule from a @WebACL@ , use 'UpdateWebACL' .
--
-- To permanently delete a @RateBasedRule@ from AWS WAF, perform the following steps:
--
--     * Update the @RateBasedRule@ to remove predicates, if any. For more information, see 'UpdateRateBasedRule' .
--
--     * Use 'GetChangeToken' to get the change token that you provide in the @ChangeToken@ parameter of a @DeleteRateBasedRule@ request.
--
--     * Submit a @DeleteRateBasedRule@ request.
module Network.AWS.WAFRegional.DeleteRateBasedRule
  ( -- * Creating a Request
    deleteRateBasedRule,
    DeleteRateBasedRule,

    -- * Request Lenses
    drbrRuleId,
    drbrChangeToken,

    -- * Destructuring the Response
    deleteRateBasedRuleResponse,
    DeleteRateBasedRuleResponse,

    -- * Response Lenses
    drbrrrsChangeToken,
    drbrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'deleteRateBasedRule' smart constructor.
data DeleteRateBasedRule = DeleteRateBasedRule'
  { _drbrRuleId ::
      !Text,
    _drbrChangeToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteRateBasedRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drbrRuleId' - The @RuleId@ of the 'RateBasedRule' that you want to delete. @RuleId@ is returned by 'CreateRateBasedRule' and by 'ListRateBasedRules' .
--
-- * 'drbrChangeToken' - The value returned by the most recent call to 'GetChangeToken' .
deleteRateBasedRule ::
  -- | 'drbrRuleId'
  Text ->
  -- | 'drbrChangeToken'
  Text ->
  DeleteRateBasedRule
deleteRateBasedRule pRuleId_ pChangeToken_ =
  DeleteRateBasedRule'
    { _drbrRuleId = pRuleId_,
      _drbrChangeToken = pChangeToken_
    }

-- | The @RuleId@ of the 'RateBasedRule' that you want to delete. @RuleId@ is returned by 'CreateRateBasedRule' and by 'ListRateBasedRules' .
drbrRuleId :: Lens' DeleteRateBasedRule Text
drbrRuleId = lens _drbrRuleId (\s a -> s {_drbrRuleId = a})

-- | The value returned by the most recent call to 'GetChangeToken' .
drbrChangeToken :: Lens' DeleteRateBasedRule Text
drbrChangeToken = lens _drbrChangeToken (\s a -> s {_drbrChangeToken = a})

instance AWSRequest DeleteRateBasedRule where
  type
    Rs DeleteRateBasedRule =
      DeleteRateBasedRuleResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          DeleteRateBasedRuleResponse'
            <$> (x .?> "ChangeToken") <*> (pure (fromEnum s))
      )

instance Hashable DeleteRateBasedRule

instance NFData DeleteRateBasedRule

instance ToHeaders DeleteRateBasedRule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.DeleteRateBasedRule" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteRateBasedRule where
  toJSON DeleteRateBasedRule' {..} =
    object
      ( catMaybes
          [ Just ("RuleId" .= _drbrRuleId),
            Just ("ChangeToken" .= _drbrChangeToken)
          ]
      )

instance ToPath DeleteRateBasedRule where
  toPath = const "/"

instance ToQuery DeleteRateBasedRule where
  toQuery = const mempty

-- | /See:/ 'deleteRateBasedRuleResponse' smart constructor.
data DeleteRateBasedRuleResponse = DeleteRateBasedRuleResponse'
  { _drbrrrsChangeToken ::
      !(Maybe Text),
    _drbrrrsResponseStatus ::
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

-- | Creates a value of 'DeleteRateBasedRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drbrrrsChangeToken' - The @ChangeToken@ that you used to submit the @DeleteRateBasedRule@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
--
-- * 'drbrrrsResponseStatus' - -- | The response status code.
deleteRateBasedRuleResponse ::
  -- | 'drbrrrsResponseStatus'
  Int ->
  DeleteRateBasedRuleResponse
deleteRateBasedRuleResponse pResponseStatus_ =
  DeleteRateBasedRuleResponse'
    { _drbrrrsChangeToken =
        Nothing,
      _drbrrrsResponseStatus = pResponseStatus_
    }

-- | The @ChangeToken@ that you used to submit the @DeleteRateBasedRule@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
drbrrrsChangeToken :: Lens' DeleteRateBasedRuleResponse (Maybe Text)
drbrrrsChangeToken = lens _drbrrrsChangeToken (\s a -> s {_drbrrrsChangeToken = a})

-- | -- | The response status code.
drbrrrsResponseStatus :: Lens' DeleteRateBasedRuleResponse Int
drbrrrsResponseStatus = lens _drbrrrsResponseStatus (\s a -> s {_drbrrrsResponseStatus = a})

instance NFData DeleteRateBasedRuleResponse
