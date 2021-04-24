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
-- Module      : Network.AWS.ELBv2.DeleteRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified rule.
--
--
-- You can't delete the default rule.
module Network.AWS.ELBv2.DeleteRule
  ( -- * Creating a Request
    deleteRule,
    DeleteRule,

    -- * Request Lenses
    drRuleARN,

    -- * Destructuring the Response
    deleteRuleResponse,
    DeleteRuleResponse,

    -- * Response Lenses
    drrrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteRule' smart constructor.
newtype DeleteRule = DeleteRule' {_drRuleARN :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drRuleARN' - The Amazon Resource Name (ARN) of the rule.
deleteRule ::
  -- | 'drRuleARN'
  Text ->
  DeleteRule
deleteRule pRuleARN_ =
  DeleteRule' {_drRuleARN = pRuleARN_}

-- | The Amazon Resource Name (ARN) of the rule.
drRuleARN :: Lens' DeleteRule Text
drRuleARN = lens _drRuleARN (\s a -> s {_drRuleARN = a})

instance AWSRequest DeleteRule where
  type Rs DeleteRule = DeleteRuleResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "DeleteRuleResult"
      ( \s h x ->
          DeleteRuleResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteRule

instance NFData DeleteRule

instance ToHeaders DeleteRule where
  toHeaders = const mempty

instance ToPath DeleteRule where
  toPath = const "/"

instance ToQuery DeleteRule where
  toQuery DeleteRule' {..} =
    mconcat
      [ "Action" =: ("DeleteRule" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "RuleArn" =: _drRuleARN
      ]

-- | /See:/ 'deleteRuleResponse' smart constructor.
newtype DeleteRuleResponse = DeleteRuleResponse'
  { _drrrsResponseStatus ::
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

-- | Creates a value of 'DeleteRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrsResponseStatus' - -- | The response status code.
deleteRuleResponse ::
  -- | 'drrrsResponseStatus'
  Int ->
  DeleteRuleResponse
deleteRuleResponse pResponseStatus_ =
  DeleteRuleResponse'
    { _drrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
drrrsResponseStatus :: Lens' DeleteRuleResponse Int
drrrsResponseStatus = lens _drrrsResponseStatus (\s a -> s {_drrrsResponseStatus = a})

instance NFData DeleteRuleResponse
