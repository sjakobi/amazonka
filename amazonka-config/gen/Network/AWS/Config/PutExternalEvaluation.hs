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
-- Module      : Network.AWS.Config.PutExternalEvaluation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add or updates the evaluations for process checks. This API checks if the rule is a process check when the name of the AWS Config rule is provided.
module Network.AWS.Config.PutExternalEvaluation
  ( -- * Creating a Request
    putExternalEvaluation,
    PutExternalEvaluation,

    -- * Request Lenses
    peeConfigRuleName,
    peeExternalEvaluation,

    -- * Destructuring the Response
    putExternalEvaluationResponse,
    PutExternalEvaluationResponse,

    -- * Response Lenses
    peerrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putExternalEvaluation' smart constructor.
data PutExternalEvaluation = PutExternalEvaluation'
  { _peeConfigRuleName ::
      !Text,
    _peeExternalEvaluation ::
      !ExternalEvaluation
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutExternalEvaluation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peeConfigRuleName' - The name of the AWS Config rule.
--
-- * 'peeExternalEvaluation' - An @ExternalEvaluation@ object that provides details about compliance.
putExternalEvaluation ::
  -- | 'peeConfigRuleName'
  Text ->
  -- | 'peeExternalEvaluation'
  ExternalEvaluation ->
  PutExternalEvaluation
putExternalEvaluation
  pConfigRuleName_
  pExternalEvaluation_ =
    PutExternalEvaluation'
      { _peeConfigRuleName =
          pConfigRuleName_,
        _peeExternalEvaluation = pExternalEvaluation_
      }

-- | The name of the AWS Config rule.
peeConfigRuleName :: Lens' PutExternalEvaluation Text
peeConfigRuleName = lens _peeConfigRuleName (\s a -> s {_peeConfigRuleName = a})

-- | An @ExternalEvaluation@ object that provides details about compliance.
peeExternalEvaluation :: Lens' PutExternalEvaluation ExternalEvaluation
peeExternalEvaluation = lens _peeExternalEvaluation (\s a -> s {_peeExternalEvaluation = a})

instance AWSRequest PutExternalEvaluation where
  type
    Rs PutExternalEvaluation =
      PutExternalEvaluationResponse
  request = postJSON config
  response =
    receiveEmpty
      ( \s h x ->
          PutExternalEvaluationResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable PutExternalEvaluation

instance NFData PutExternalEvaluation

instance ToHeaders PutExternalEvaluation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.PutExternalEvaluation" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutExternalEvaluation where
  toJSON PutExternalEvaluation' {..} =
    object
      ( catMaybes
          [ Just ("ConfigRuleName" .= _peeConfigRuleName),
            Just
              ("ExternalEvaluation" .= _peeExternalEvaluation)
          ]
      )

instance ToPath PutExternalEvaluation where
  toPath = const "/"

instance ToQuery PutExternalEvaluation where
  toQuery = const mempty

-- | /See:/ 'putExternalEvaluationResponse' smart constructor.
newtype PutExternalEvaluationResponse = PutExternalEvaluationResponse'
  { _peerrsResponseStatus ::
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

-- | Creates a value of 'PutExternalEvaluationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peerrsResponseStatus' - -- | The response status code.
putExternalEvaluationResponse ::
  -- | 'peerrsResponseStatus'
  Int ->
  PutExternalEvaluationResponse
putExternalEvaluationResponse pResponseStatus_ =
  PutExternalEvaluationResponse'
    { _peerrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
peerrsResponseStatus :: Lens' PutExternalEvaluationResponse Int
peerrsResponseStatus = lens _peerrsResponseStatus (\s a -> s {_peerrsResponseStatus = a})

instance NFData PutExternalEvaluationResponse
