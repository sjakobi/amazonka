{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AutomationExecutionFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AutomationExecutionFilter where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.AutomationExecutionFilterKey

-- | A filter used to match specific automation executions. This is used to limit the scope of Automation execution information returned.
--
--
--
-- /See:/ 'automationExecutionFilter' smart constructor.
data AutomationExecutionFilter = AutomationExecutionFilter'
  { _aefKey ::
      !AutomationExecutionFilterKey,
    _aefValues ::
      !(List1 Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AutomationExecutionFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aefKey' - One or more keys to limit the results.
--
-- * 'aefValues' - The values used to limit the execution information associated with the filter's key.
automationExecutionFilter ::
  -- | 'aefKey'
  AutomationExecutionFilterKey ->
  -- | 'aefValues'
  NonEmpty Text ->
  AutomationExecutionFilter
automationExecutionFilter pKey_ pValues_ =
  AutomationExecutionFilter'
    { _aefKey = pKey_,
      _aefValues = _List1 # pValues_
    }

-- | One or more keys to limit the results.
aefKey :: Lens' AutomationExecutionFilter AutomationExecutionFilterKey
aefKey = lens _aefKey (\s a -> s {_aefKey = a})

-- | The values used to limit the execution information associated with the filter's key.
aefValues :: Lens' AutomationExecutionFilter (NonEmpty Text)
aefValues = lens _aefValues (\s a -> s {_aefValues = a}) . _List1

instance Hashable AutomationExecutionFilter

instance NFData AutomationExecutionFilter

instance ToJSON AutomationExecutionFilter where
  toJSON AutomationExecutionFilter' {..} =
    object
      ( catMaybes
          [ Just ("Key" .= _aefKey),
            Just ("Values" .= _aefValues)
          ]
      )
