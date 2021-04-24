{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.ContainerSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.ContainerSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing summary details of a container within a job.
--
--
--
-- /See:/ 'containerSummary' smart constructor.
data ContainerSummary = ContainerSummary'
  { _csExitCode ::
      !(Maybe Int),
    _csReason :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csExitCode' - The exit code to return upon completion.
--
-- * 'csReason' - A short (255 max characters) human-readable string to provide additional details about a running or stopped container.
containerSummary ::
  ContainerSummary
containerSummary =
  ContainerSummary'
    { _csExitCode = Nothing,
      _csReason = Nothing
    }

-- | The exit code to return upon completion.
csExitCode :: Lens' ContainerSummary (Maybe Int)
csExitCode = lens _csExitCode (\s a -> s {_csExitCode = a})

-- | A short (255 max characters) human-readable string to provide additional details about a running or stopped container.
csReason :: Lens' ContainerSummary (Maybe Text)
csReason = lens _csReason (\s a -> s {_csReason = a})

instance FromJSON ContainerSummary where
  parseJSON =
    withObject
      "ContainerSummary"
      ( \x ->
          ContainerSummary'
            <$> (x .:? "exitCode") <*> (x .:? "reason")
      )

instance Hashable ContainerSummary

instance NFData ContainerSummary
