{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.Problem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.Problem where

import Network.AWS.DeviceFarm.Types.Device
import Network.AWS.DeviceFarm.Types.ExecutionResult
import Network.AWS.DeviceFarm.Types.ProblemDetail
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a specific warning or failure.
--
--
--
-- /See:/ 'problem' smart constructor.
data Problem = Problem'
  { _pJob ::
      !(Maybe ProblemDetail),
    _pResult :: !(Maybe ExecutionResult),
    _pMessage :: !(Maybe Text),
    _pDevice :: !(Maybe Device),
    _pRun :: !(Maybe ProblemDetail),
    _pTest :: !(Maybe ProblemDetail),
    _pSuite :: !(Maybe ProblemDetail)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Problem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pJob' - Information about the associated job.
--
-- * 'pResult' - The problem's result. Allowed values include:     * PENDING     * PASSED     * WARNED     * FAILED     * SKIPPED     * ERRORED     * STOPPED
--
-- * 'pMessage' - A message about the problem's result.
--
-- * 'pDevice' - Information about the associated device.
--
-- * 'pRun' - Information about the associated run.
--
-- * 'pTest' - Information about the associated test.
--
-- * 'pSuite' - Information about the associated suite.
problem ::
  Problem
problem =
  Problem'
    { _pJob = Nothing,
      _pResult = Nothing,
      _pMessage = Nothing,
      _pDevice = Nothing,
      _pRun = Nothing,
      _pTest = Nothing,
      _pSuite = Nothing
    }

-- | Information about the associated job.
pJob :: Lens' Problem (Maybe ProblemDetail)
pJob = lens _pJob (\s a -> s {_pJob = a})

-- | The problem's result. Allowed values include:     * PENDING     * PASSED     * WARNED     * FAILED     * SKIPPED     * ERRORED     * STOPPED
pResult :: Lens' Problem (Maybe ExecutionResult)
pResult = lens _pResult (\s a -> s {_pResult = a})

-- | A message about the problem's result.
pMessage :: Lens' Problem (Maybe Text)
pMessage = lens _pMessage (\s a -> s {_pMessage = a})

-- | Information about the associated device.
pDevice :: Lens' Problem (Maybe Device)
pDevice = lens _pDevice (\s a -> s {_pDevice = a})

-- | Information about the associated run.
pRun :: Lens' Problem (Maybe ProblemDetail)
pRun = lens _pRun (\s a -> s {_pRun = a})

-- | Information about the associated test.
pTest :: Lens' Problem (Maybe ProblemDetail)
pTest = lens _pTest (\s a -> s {_pTest = a})

-- | Information about the associated suite.
pSuite :: Lens' Problem (Maybe ProblemDetail)
pSuite = lens _pSuite (\s a -> s {_pSuite = a})

instance FromJSON Problem where
  parseJSON =
    withObject
      "Problem"
      ( \x ->
          Problem'
            <$> (x .:? "job")
            <*> (x .:? "result")
            <*> (x .:? "message")
            <*> (x .:? "device")
            <*> (x .:? "run")
            <*> (x .:? "test")
            <*> (x .:? "suite")
      )

instance Hashable Problem

instance NFData Problem
