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
-- Module      : Network.AWS.CloudFormation.Types.StackSetOperationAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackSetOperationAction
  ( StackSetOperationAction
      ( ..,
        StackSetOperationActionCREATE,
        StackSetOperationActionDELETE,
        StackSetOperationActionDETECTDRIFT,
        StackSetOperationActionUPDATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackSetOperationAction = StackSetOperationAction'
  { fromStackSetOperationAction ::
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

pattern StackSetOperationActionCREATE :: StackSetOperationAction
pattern StackSetOperationActionCREATE = StackSetOperationAction' "CREATE"

pattern StackSetOperationActionDELETE :: StackSetOperationAction
pattern StackSetOperationActionDELETE = StackSetOperationAction' "DELETE"

pattern StackSetOperationActionDETECTDRIFT :: StackSetOperationAction
pattern StackSetOperationActionDETECTDRIFT = StackSetOperationAction' "DETECT_DRIFT"

pattern StackSetOperationActionUPDATE :: StackSetOperationAction
pattern StackSetOperationActionUPDATE = StackSetOperationAction' "UPDATE"

{-# COMPLETE
  StackSetOperationActionCREATE,
  StackSetOperationActionDELETE,
  StackSetOperationActionDETECTDRIFT,
  StackSetOperationActionUPDATE,
  StackSetOperationAction'
  #-}

instance Prelude.FromText StackSetOperationAction where
  parser = StackSetOperationAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackSetOperationAction where
  toText (StackSetOperationAction' x) = x

instance Prelude.Hashable StackSetOperationAction

instance Prelude.NFData StackSetOperationAction

instance Prelude.ToByteString StackSetOperationAction

instance Prelude.ToQuery StackSetOperationAction

instance Prelude.ToHeader StackSetOperationAction

instance Prelude.FromXML StackSetOperationAction where
  parseXML = Prelude.parseXMLText "StackSetOperationAction"
