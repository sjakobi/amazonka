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
-- Module      : Network.AWS.CloudFormation.Types.OnFailure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.OnFailure
  ( OnFailure
      ( ..,
        OnFailureDELETE,
        OnFailureDONOTHING,
        OnFailureROLLBACK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OnFailure = OnFailure'
  { fromOnFailure ::
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

pattern OnFailureDELETE :: OnFailure
pattern OnFailureDELETE = OnFailure' "DELETE"

pattern OnFailureDONOTHING :: OnFailure
pattern OnFailureDONOTHING = OnFailure' "DO_NOTHING"

pattern OnFailureROLLBACK :: OnFailure
pattern OnFailureROLLBACK = OnFailure' "ROLLBACK"

{-# COMPLETE
  OnFailureDELETE,
  OnFailureDONOTHING,
  OnFailureROLLBACK,
  OnFailure'
  #-}

instance Prelude.FromText OnFailure where
  parser = OnFailure' Prelude.<$> Prelude.takeText

instance Prelude.ToText OnFailure where
  toText (OnFailure' x) = x

instance Prelude.Hashable OnFailure

instance Prelude.NFData OnFailure

instance Prelude.ToByteString OnFailure

instance Prelude.ToQuery OnFailure

instance Prelude.ToHeader OnFailure
