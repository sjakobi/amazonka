{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ViolationEventAdditionalInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ViolationEventAdditionalInfo where

import Network.AWS.IoT.Types.ConfidenceLevel
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The details of a violation event.
--
--
--
-- /See:/ 'violationEventAdditionalInfo' smart constructor.
newtype ViolationEventAdditionalInfo = ViolationEventAdditionalInfo'
  { _veaiConfidenceLevel ::
      Maybe
        ConfidenceLevel
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ViolationEventAdditionalInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'veaiConfidenceLevel' - The sensitivity of anomalous behavior evaluation. Can be @Low@ , @Medium@ , or @High@ .
violationEventAdditionalInfo ::
  ViolationEventAdditionalInfo
violationEventAdditionalInfo =
  ViolationEventAdditionalInfo'
    { _veaiConfidenceLevel =
        Nothing
    }

-- | The sensitivity of anomalous behavior evaluation. Can be @Low@ , @Medium@ , or @High@ .
veaiConfidenceLevel :: Lens' ViolationEventAdditionalInfo (Maybe ConfidenceLevel)
veaiConfidenceLevel = lens _veaiConfidenceLevel (\s a -> s {_veaiConfidenceLevel = a})

instance FromJSON ViolationEventAdditionalInfo where
  parseJSON =
    withObject
      "ViolationEventAdditionalInfo"
      ( \x ->
          ViolationEventAdditionalInfo'
            <$> (x .:? "confidenceLevel")
      )

instance Hashable ViolationEventAdditionalInfo

instance NFData ViolationEventAdditionalInfo
