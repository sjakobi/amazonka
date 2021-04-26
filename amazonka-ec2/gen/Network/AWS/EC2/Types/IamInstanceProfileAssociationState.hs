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
-- Module      : Network.AWS.EC2.Types.IamInstanceProfileAssociationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.IamInstanceProfileAssociationState
  ( IamInstanceProfileAssociationState
      ( ..,
        IamInstanceProfileAssociationStateAssociated,
        IamInstanceProfileAssociationStateAssociating,
        IamInstanceProfileAssociationStateDisassociated,
        IamInstanceProfileAssociationStateDisassociating
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype IamInstanceProfileAssociationState = IamInstanceProfileAssociationState'
  { fromIamInstanceProfileAssociationState ::
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

pattern IamInstanceProfileAssociationStateAssociated :: IamInstanceProfileAssociationState
pattern IamInstanceProfileAssociationStateAssociated = IamInstanceProfileAssociationState' "associated"

pattern IamInstanceProfileAssociationStateAssociating :: IamInstanceProfileAssociationState
pattern IamInstanceProfileAssociationStateAssociating = IamInstanceProfileAssociationState' "associating"

pattern IamInstanceProfileAssociationStateDisassociated :: IamInstanceProfileAssociationState
pattern IamInstanceProfileAssociationStateDisassociated = IamInstanceProfileAssociationState' "disassociated"

pattern IamInstanceProfileAssociationStateDisassociating :: IamInstanceProfileAssociationState
pattern IamInstanceProfileAssociationStateDisassociating = IamInstanceProfileAssociationState' "disassociating"

{-# COMPLETE
  IamInstanceProfileAssociationStateAssociated,
  IamInstanceProfileAssociationStateAssociating,
  IamInstanceProfileAssociationStateDisassociated,
  IamInstanceProfileAssociationStateDisassociating,
  IamInstanceProfileAssociationState'
  #-}

instance Prelude.FromText IamInstanceProfileAssociationState where
  parser = IamInstanceProfileAssociationState' Prelude.<$> Prelude.takeText

instance Prelude.ToText IamInstanceProfileAssociationState where
  toText (IamInstanceProfileAssociationState' x) = x

instance Prelude.Hashable IamInstanceProfileAssociationState

instance Prelude.NFData IamInstanceProfileAssociationState

instance Prelude.ToByteString IamInstanceProfileAssociationState

instance Prelude.ToQuery IamInstanceProfileAssociationState

instance Prelude.ToHeader IamInstanceProfileAssociationState

instance Prelude.FromXML IamInstanceProfileAssociationState where
  parseXML = Prelude.parseXMLText "IamInstanceProfileAssociationState"
