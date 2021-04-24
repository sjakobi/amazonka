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
-- Module      : Network.AWS.XRay.UpdateSamplingRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a sampling rule's configuration.
module Network.AWS.XRay.UpdateSamplingRule
  ( -- * Creating a Request
    updateSamplingRule,
    UpdateSamplingRule,

    -- * Request Lenses
    usrSamplingRuleUpdate,

    -- * Destructuring the Response
    updateSamplingRuleResponse,
    UpdateSamplingRuleResponse,

    -- * Response Lenses
    usrrrsSamplingRuleRecord,
    usrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'updateSamplingRule' smart constructor.
newtype UpdateSamplingRule = UpdateSamplingRule'
  { _usrSamplingRuleUpdate ::
      SamplingRuleUpdate
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateSamplingRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrSamplingRuleUpdate' - The rule and fields to change.
updateSamplingRule ::
  -- | 'usrSamplingRuleUpdate'
  SamplingRuleUpdate ->
  UpdateSamplingRule
updateSamplingRule pSamplingRuleUpdate_ =
  UpdateSamplingRule'
    { _usrSamplingRuleUpdate =
        pSamplingRuleUpdate_
    }

-- | The rule and fields to change.
usrSamplingRuleUpdate :: Lens' UpdateSamplingRule SamplingRuleUpdate
usrSamplingRuleUpdate = lens _usrSamplingRuleUpdate (\s a -> s {_usrSamplingRuleUpdate = a})

instance AWSRequest UpdateSamplingRule where
  type
    Rs UpdateSamplingRule =
      UpdateSamplingRuleResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          UpdateSamplingRuleResponse'
            <$> (x .?> "SamplingRuleRecord") <*> (pure (fromEnum s))
      )

instance Hashable UpdateSamplingRule

instance NFData UpdateSamplingRule

instance ToHeaders UpdateSamplingRule where
  toHeaders = const mempty

instance ToJSON UpdateSamplingRule where
  toJSON UpdateSamplingRule' {..} =
    object
      ( catMaybes
          [ Just
              ("SamplingRuleUpdate" .= _usrSamplingRuleUpdate)
          ]
      )

instance ToPath UpdateSamplingRule where
  toPath = const "/UpdateSamplingRule"

instance ToQuery UpdateSamplingRule where
  toQuery = const mempty

-- | /See:/ 'updateSamplingRuleResponse' smart constructor.
data UpdateSamplingRuleResponse = UpdateSamplingRuleResponse'
  { _usrrrsSamplingRuleRecord ::
      !( Maybe
           SamplingRuleRecord
       ),
    _usrrrsResponseStatus ::
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

-- | Creates a value of 'UpdateSamplingRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrrrsSamplingRuleRecord' - The updated rule definition and metadata.
--
-- * 'usrrrsResponseStatus' - -- | The response status code.
updateSamplingRuleResponse ::
  -- | 'usrrrsResponseStatus'
  Int ->
  UpdateSamplingRuleResponse
updateSamplingRuleResponse pResponseStatus_ =
  UpdateSamplingRuleResponse'
    { _usrrrsSamplingRuleRecord =
        Nothing,
      _usrrrsResponseStatus = pResponseStatus_
    }

-- | The updated rule definition and metadata.
usrrrsSamplingRuleRecord :: Lens' UpdateSamplingRuleResponse (Maybe SamplingRuleRecord)
usrrrsSamplingRuleRecord = lens _usrrrsSamplingRuleRecord (\s a -> s {_usrrrsSamplingRuleRecord = a})

-- | -- | The response status code.
usrrrsResponseStatus :: Lens' UpdateSamplingRuleResponse Int
usrrrsResponseStatus = lens _usrrrsResponseStatus (\s a -> s {_usrrrsResponseStatus = a})

instance NFData UpdateSamplingRuleResponse
