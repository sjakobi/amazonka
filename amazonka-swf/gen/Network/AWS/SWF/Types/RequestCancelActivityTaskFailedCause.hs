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
-- Module      : Network.AWS.SWF.Types.RequestCancelActivityTaskFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.RequestCancelActivityTaskFailedCause
  ( RequestCancelActivityTaskFailedCause
      ( ..,
        RequestCancelActivityTaskFailedCauseACTIVITYIDUNKNOWN,
        RequestCancelActivityTaskFailedCauseOPERATIONNOTPERMITTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RequestCancelActivityTaskFailedCause = RequestCancelActivityTaskFailedCause'
  { fromRequestCancelActivityTaskFailedCause ::
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

pattern RequestCancelActivityTaskFailedCauseACTIVITYIDUNKNOWN :: RequestCancelActivityTaskFailedCause
pattern RequestCancelActivityTaskFailedCauseACTIVITYIDUNKNOWN = RequestCancelActivityTaskFailedCause' "ACTIVITY_ID_UNKNOWN"

pattern RequestCancelActivityTaskFailedCauseOPERATIONNOTPERMITTED :: RequestCancelActivityTaskFailedCause
pattern RequestCancelActivityTaskFailedCauseOPERATIONNOTPERMITTED = RequestCancelActivityTaskFailedCause' "OPERATION_NOT_PERMITTED"

{-# COMPLETE
  RequestCancelActivityTaskFailedCauseACTIVITYIDUNKNOWN,
  RequestCancelActivityTaskFailedCauseOPERATIONNOTPERMITTED,
  RequestCancelActivityTaskFailedCause'
  #-}

instance Prelude.FromText RequestCancelActivityTaskFailedCause where
  parser = RequestCancelActivityTaskFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText RequestCancelActivityTaskFailedCause where
  toText (RequestCancelActivityTaskFailedCause' x) = x

instance Prelude.Hashable RequestCancelActivityTaskFailedCause

instance Prelude.NFData RequestCancelActivityTaskFailedCause

instance Prelude.ToByteString RequestCancelActivityTaskFailedCause

instance Prelude.ToQuery RequestCancelActivityTaskFailedCause

instance Prelude.ToHeader RequestCancelActivityTaskFailedCause

instance Prelude.FromJSON RequestCancelActivityTaskFailedCause where
  parseJSON = Prelude.parseJSONText "RequestCancelActivityTaskFailedCause"
