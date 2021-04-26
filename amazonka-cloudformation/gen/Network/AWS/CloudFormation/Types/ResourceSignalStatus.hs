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
-- Module      : Network.AWS.CloudFormation.Types.ResourceSignalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ResourceSignalStatus
  ( ResourceSignalStatus
      ( ..,
        ResourceSignalStatusFAILURE,
        ResourceSignalStatusSUCCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceSignalStatus = ResourceSignalStatus'
  { fromResourceSignalStatus ::
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

pattern ResourceSignalStatusFAILURE :: ResourceSignalStatus
pattern ResourceSignalStatusFAILURE = ResourceSignalStatus' "FAILURE"

pattern ResourceSignalStatusSUCCESS :: ResourceSignalStatus
pattern ResourceSignalStatusSUCCESS = ResourceSignalStatus' "SUCCESS"

{-# COMPLETE
  ResourceSignalStatusFAILURE,
  ResourceSignalStatusSUCCESS,
  ResourceSignalStatus'
  #-}

instance Prelude.FromText ResourceSignalStatus where
  parser = ResourceSignalStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceSignalStatus where
  toText (ResourceSignalStatus' x) = x

instance Prelude.Hashable ResourceSignalStatus

instance Prelude.NFData ResourceSignalStatus

instance Prelude.ToByteString ResourceSignalStatus

instance Prelude.ToQuery ResourceSignalStatus

instance Prelude.ToHeader ResourceSignalStatus
