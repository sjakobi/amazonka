{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.CreateConnectionAPIKeyAuthRequestParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.CreateConnectionAPIKeyAuthRequestParameters where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the API key authorization parameters for the connection.
--
--
--
-- /See:/ 'createConnectionAPIKeyAuthRequestParameters' smart constructor.
data CreateConnectionAPIKeyAuthRequestParameters = CreateConnectionAPIKeyAuthRequestParameters'
  { _ccakarpAPIKeyName ::
      !Text,
    _ccakarpAPIKeyValue ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateConnectionAPIKeyAuthRequestParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccakarpAPIKeyName' - The name of the API key to use for authorization.
--
-- * 'ccakarpAPIKeyValue' - The value for the API key to use for authorization.
createConnectionAPIKeyAuthRequestParameters ::
  -- | 'ccakarpAPIKeyName'
  Text ->
  -- | 'ccakarpAPIKeyValue'
  Text ->
  CreateConnectionAPIKeyAuthRequestParameters
createConnectionAPIKeyAuthRequestParameters
  pAPIKeyName_
  pAPIKeyValue_ =
    CreateConnectionAPIKeyAuthRequestParameters'
      { _ccakarpAPIKeyName =
          pAPIKeyName_,
        _ccakarpAPIKeyValue =
          pAPIKeyValue_
      }

-- | The name of the API key to use for authorization.
ccakarpAPIKeyName :: Lens' CreateConnectionAPIKeyAuthRequestParameters Text
ccakarpAPIKeyName = lens _ccakarpAPIKeyName (\s a -> s {_ccakarpAPIKeyName = a})

-- | The value for the API key to use for authorization.
ccakarpAPIKeyValue :: Lens' CreateConnectionAPIKeyAuthRequestParameters Text
ccakarpAPIKeyValue = lens _ccakarpAPIKeyValue (\s a -> s {_ccakarpAPIKeyValue = a})

instance
  Hashable
    CreateConnectionAPIKeyAuthRequestParameters

instance
  NFData
    CreateConnectionAPIKeyAuthRequestParameters

instance
  ToJSON
    CreateConnectionAPIKeyAuthRequestParameters
  where
  toJSON
    CreateConnectionAPIKeyAuthRequestParameters' {..} =
      object
        ( catMaybes
            [ Just ("ApiKeyName" .= _ccakarpAPIKeyName),
              Just ("ApiKeyValue" .= _ccakarpAPIKeyValue)
            ]
        )
