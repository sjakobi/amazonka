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
-- Module      : Network.AWS.Support.ResolveCase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resolves a support case. This operation takes a @caseId@ and returns the initial and final state of the case.
module Network.AWS.Support.ResolveCase
  ( -- * Creating a Request
    resolveCase,
    ResolveCase,

    -- * Request Lenses
    rcCaseId,

    -- * Destructuring the Response
    resolveCaseResponse,
    ResolveCaseResponse,

    -- * Response Lenses
    rcrrsFinalCaseStatus,
    rcrrsInitialCaseStatus,
    rcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Support.Types

-- | /See:/ 'resolveCase' smart constructor.
newtype ResolveCase = ResolveCase'
  { _rcCaseId ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResolveCase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcCaseId' - The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-/12345678910-2013-c4c1d2bf33c5cf47/
resolveCase ::
  ResolveCase
resolveCase = ResolveCase' {_rcCaseId = Nothing}

-- | The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-/12345678910-2013-c4c1d2bf33c5cf47/
rcCaseId :: Lens' ResolveCase (Maybe Text)
rcCaseId = lens _rcCaseId (\s a -> s {_rcCaseId = a})

instance AWSRequest ResolveCase where
  type Rs ResolveCase = ResolveCaseResponse
  request = postJSON support
  response =
    receiveJSON
      ( \s h x ->
          ResolveCaseResponse'
            <$> (x .?> "finalCaseStatus")
            <*> (x .?> "initialCaseStatus")
            <*> (pure (fromEnum s))
      )

instance Hashable ResolveCase

instance NFData ResolveCase

instance ToHeaders ResolveCase where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSSupport_20130415.ResolveCase" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ResolveCase where
  toJSON ResolveCase' {..} =
    object (catMaybes [("caseId" .=) <$> _rcCaseId])

instance ToPath ResolveCase where
  toPath = const "/"

instance ToQuery ResolveCase where
  toQuery = const mempty

-- | The status of the case returned by the 'ResolveCase' operation.
--
--
--
-- /See:/ 'resolveCaseResponse' smart constructor.
data ResolveCaseResponse = ResolveCaseResponse'
  { _rcrrsFinalCaseStatus ::
      !(Maybe Text),
    _rcrrsInitialCaseStatus ::
      !(Maybe Text),
    _rcrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResolveCaseResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrrsFinalCaseStatus' - The status of the case after the 'ResolveCase' request was processed.
--
-- * 'rcrrsInitialCaseStatus' - The status of the case when the 'ResolveCase' request was sent.
--
-- * 'rcrrsResponseStatus' - -- | The response status code.
resolveCaseResponse ::
  -- | 'rcrrsResponseStatus'
  Int ->
  ResolveCaseResponse
resolveCaseResponse pResponseStatus_ =
  ResolveCaseResponse'
    { _rcrrsFinalCaseStatus =
        Nothing,
      _rcrrsInitialCaseStatus = Nothing,
      _rcrrsResponseStatus = pResponseStatus_
    }

-- | The status of the case after the 'ResolveCase' request was processed.
rcrrsFinalCaseStatus :: Lens' ResolveCaseResponse (Maybe Text)
rcrrsFinalCaseStatus = lens _rcrrsFinalCaseStatus (\s a -> s {_rcrrsFinalCaseStatus = a})

-- | The status of the case when the 'ResolveCase' request was sent.
rcrrsInitialCaseStatus :: Lens' ResolveCaseResponse (Maybe Text)
rcrrsInitialCaseStatus = lens _rcrrsInitialCaseStatus (\s a -> s {_rcrrsInitialCaseStatus = a})

-- | -- | The response status code.
rcrrsResponseStatus :: Lens' ResolveCaseResponse Int
rcrrsResponseStatus = lens _rcrrsResponseStatus (\s a -> s {_rcrrsResponseStatus = a})

instance NFData ResolveCaseResponse
