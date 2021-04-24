{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.DefineIndexField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Configures an @'IndexField' @ for the search domain. Used to create new fields and modify existing ones. You must specify the name of the domain you are configuring and an index field configuration. The index field configuration specifies a unique name, the index field type, and the options you want to configure for the field. The options you can specify depend on the @'IndexFieldType' @ . If the field exists, the new configuration replaces the old one. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html Configuring Index Fields> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DefineIndexField
  ( -- * Creating a Request
    defineIndexField,
    DefineIndexField,

    -- * Request Lenses
    defDomainName,
    defIndexField,

    -- * Destructuring the Response
    defineIndexFieldResponse,
    DefineIndexFieldResponse,

    -- * Response Lenses
    ddrsResponseStatus,
    ddrsIndexField,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DefineIndexField' @ operation. Specifies the name of the domain you want to update and the index field configuration.
--
--
--
-- /See:/ 'defineIndexField' smart constructor.
data DefineIndexField = DefineIndexField'
  { _defDomainName ::
      !Text,
    _defIndexField :: !IndexField
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DefineIndexField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'defDomainName' - Undocumented member.
--
-- * 'defIndexField' - The index field and field options you want to configure.
defineIndexField ::
  -- | 'defDomainName'
  Text ->
  -- | 'defIndexField'
  IndexField ->
  DefineIndexField
defineIndexField pDomainName_ pIndexField_ =
  DefineIndexField'
    { _defDomainName = pDomainName_,
      _defIndexField = pIndexField_
    }

-- | Undocumented member.
defDomainName :: Lens' DefineIndexField Text
defDomainName = lens _defDomainName (\s a -> s {_defDomainName = a})

-- | The index field and field options you want to configure.
defIndexField :: Lens' DefineIndexField IndexField
defIndexField = lens _defIndexField (\s a -> s {_defIndexField = a})

instance AWSRequest DefineIndexField where
  type Rs DefineIndexField = DefineIndexFieldResponse
  request = postQuery cloudSearch
  response =
    receiveXMLWrapper
      "DefineIndexFieldResult"
      ( \s h x ->
          DefineIndexFieldResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "IndexField")
      )

instance Hashable DefineIndexField

instance NFData DefineIndexField

instance ToHeaders DefineIndexField where
  toHeaders = const mempty

instance ToPath DefineIndexField where
  toPath = const "/"

instance ToQuery DefineIndexField where
  toQuery DefineIndexField' {..} =
    mconcat
      [ "Action" =: ("DefineIndexField" :: ByteString),
        "Version" =: ("2013-01-01" :: ByteString),
        "DomainName" =: _defDomainName,
        "IndexField" =: _defIndexField
      ]

-- | The result of a @'DefineIndexField' @ request. Contains the status of the newly-configured index field.
--
--
--
-- /See:/ 'defineIndexFieldResponse' smart constructor.
data DefineIndexFieldResponse = DefineIndexFieldResponse'
  { _ddrsResponseStatus ::
      !Int,
    _ddrsIndexField ::
      !IndexFieldStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DefineIndexFieldResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrsResponseStatus' - -- | The response status code.
--
-- * 'ddrsIndexField' - Undocumented member.
defineIndexFieldResponse ::
  -- | 'ddrsResponseStatus'
  Int ->
  -- | 'ddrsIndexField'
  IndexFieldStatus ->
  DefineIndexFieldResponse
defineIndexFieldResponse
  pResponseStatus_
  pIndexField_ =
    DefineIndexFieldResponse'
      { _ddrsResponseStatus =
          pResponseStatus_,
        _ddrsIndexField = pIndexField_
      }

-- | -- | The response status code.
ddrsResponseStatus :: Lens' DefineIndexFieldResponse Int
ddrsResponseStatus = lens _ddrsResponseStatus (\s a -> s {_ddrsResponseStatus = a})

-- | Undocumented member.
ddrsIndexField :: Lens' DefineIndexFieldResponse IndexFieldStatus
ddrsIndexField = lens _ddrsIndexField (\s a -> s {_ddrsIndexField = a})

instance NFData DefineIndexFieldResponse
