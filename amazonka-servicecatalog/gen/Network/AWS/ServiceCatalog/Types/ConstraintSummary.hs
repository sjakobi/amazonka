{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ConstraintSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ConstraintSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Summary information about a constraint.
--
--
--
-- /See:/ 'constraintSummary' smart constructor.
data ConstraintSummary = ConstraintSummary'
  { _csDescription ::
      !(Maybe Text),
    _csType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ConstraintSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csDescription' - The description of the constraint.
--
-- * 'csType' - The type of constraint.     * @LAUNCH@      * @NOTIFICATION@      * STACKSET     * @TEMPLATE@
constraintSummary ::
  ConstraintSummary
constraintSummary =
  ConstraintSummary'
    { _csDescription = Nothing,
      _csType = Nothing
    }

-- | The description of the constraint.
csDescription :: Lens' ConstraintSummary (Maybe Text)
csDescription = lens _csDescription (\s a -> s {_csDescription = a})

-- | The type of constraint.     * @LAUNCH@      * @NOTIFICATION@      * STACKSET     * @TEMPLATE@
csType :: Lens' ConstraintSummary (Maybe Text)
csType = lens _csType (\s a -> s {_csType = a})

instance FromJSON ConstraintSummary where
  parseJSON =
    withObject
      "ConstraintSummary"
      ( \x ->
          ConstraintSummary'
            <$> (x .:? "Description") <*> (x .:? "Type")
      )

instance Hashable ConstraintSummary

instance NFData ConstraintSummary
