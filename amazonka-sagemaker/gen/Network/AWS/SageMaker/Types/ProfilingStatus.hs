{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProfilingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProfilingStatus
  ( ProfilingStatus
      ( ..,
        ProfilingStatusDisabled,
        ProfilingStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProfilingStatus = ProfilingStatus'
  { fromProfilingStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ProfilingStatusDisabled :: ProfilingStatus
pattern ProfilingStatusDisabled = ProfilingStatus' "Disabled"

pattern ProfilingStatusEnabled :: ProfilingStatus
pattern ProfilingStatusEnabled = ProfilingStatus' "Enabled"

{-# COMPLETE
  ProfilingStatusDisabled,
  ProfilingStatusEnabled,
  ProfilingStatus'
  #-}

instance Prelude.FromText ProfilingStatus where
  parser = ProfilingStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProfilingStatus where
  toText (ProfilingStatus' x) = x

instance Prelude.Hashable ProfilingStatus

instance Prelude.NFData ProfilingStatus

instance Prelude.ToByteString ProfilingStatus

instance Prelude.ToQuery ProfilingStatus

instance Prelude.ToHeader ProfilingStatus

instance Prelude.FromJSON ProfilingStatus where
  parseJSON = Prelude.parseJSONText "ProfilingStatus"
