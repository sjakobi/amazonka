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
-- Module      : Network.AWS.EMR.Types.ActionOnFailure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.ActionOnFailure
  ( ActionOnFailure
      ( ..,
        ActionOnFailureCANCELANDWAIT,
        ActionOnFailureCONTINUE,
        ActionOnFailureTERMINATECLUSTER,
        ActionOnFailureTERMINATEJOBFLOW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionOnFailure = ActionOnFailure'
  { fromActionOnFailure ::
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

pattern ActionOnFailureCANCELANDWAIT :: ActionOnFailure
pattern ActionOnFailureCANCELANDWAIT = ActionOnFailure' "CANCEL_AND_WAIT"

pattern ActionOnFailureCONTINUE :: ActionOnFailure
pattern ActionOnFailureCONTINUE = ActionOnFailure' "CONTINUE"

pattern ActionOnFailureTERMINATECLUSTER :: ActionOnFailure
pattern ActionOnFailureTERMINATECLUSTER = ActionOnFailure' "TERMINATE_CLUSTER"

pattern ActionOnFailureTERMINATEJOBFLOW :: ActionOnFailure
pattern ActionOnFailureTERMINATEJOBFLOW = ActionOnFailure' "TERMINATE_JOB_FLOW"

{-# COMPLETE
  ActionOnFailureCANCELANDWAIT,
  ActionOnFailureCONTINUE,
  ActionOnFailureTERMINATECLUSTER,
  ActionOnFailureTERMINATEJOBFLOW,
  ActionOnFailure'
  #-}

instance Prelude.FromText ActionOnFailure where
  parser = ActionOnFailure' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionOnFailure where
  toText (ActionOnFailure' x) = x

instance Prelude.Hashable ActionOnFailure

instance Prelude.NFData ActionOnFailure

instance Prelude.ToByteString ActionOnFailure

instance Prelude.ToQuery ActionOnFailure

instance Prelude.ToHeader ActionOnFailure

instance Prelude.ToJSON ActionOnFailure where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ActionOnFailure where
  parseJSON = Prelude.parseJSONText "ActionOnFailure"
