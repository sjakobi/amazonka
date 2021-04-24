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
-- Module      : Network.AWS.CloudSearch.DefineExpression
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Configures an @'Expression' @ for the search domain. Used to create new expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html Configuring Expressions> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DefineExpression
  ( -- * Creating a Request
    defineExpression,
    DefineExpression,

    -- * Request Lenses
    deDomainName,
    deExpression,

    -- * Destructuring the Response
    defineExpressionResponse,
    DefineExpressionResponse,

    -- * Response Lenses
    derrsResponseStatus,
    derrsExpression,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DefineExpression' @ operation. Specifies the name of the domain you want to update and the expression you want to configure.
--
--
--
-- /See:/ 'defineExpression' smart constructor.
data DefineExpression = DefineExpression'
  { _deDomainName ::
      !Text,
    _deExpression :: !Expression
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DefineExpression' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deDomainName' - Undocumented member.
--
-- * 'deExpression' - Undocumented member.
defineExpression ::
  -- | 'deDomainName'
  Text ->
  -- | 'deExpression'
  Expression ->
  DefineExpression
defineExpression pDomainName_ pExpression_ =
  DefineExpression'
    { _deDomainName = pDomainName_,
      _deExpression = pExpression_
    }

-- | Undocumented member.
deDomainName :: Lens' DefineExpression Text
deDomainName = lens _deDomainName (\s a -> s {_deDomainName = a})

-- | Undocumented member.
deExpression :: Lens' DefineExpression Expression
deExpression = lens _deExpression (\s a -> s {_deExpression = a})

instance AWSRequest DefineExpression where
  type Rs DefineExpression = DefineExpressionResponse
  request = postQuery cloudSearch
  response =
    receiveXMLWrapper
      "DefineExpressionResult"
      ( \s h x ->
          DefineExpressionResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "Expression")
      )

instance Hashable DefineExpression

instance NFData DefineExpression

instance ToHeaders DefineExpression where
  toHeaders = const mempty

instance ToPath DefineExpression where
  toPath = const "/"

instance ToQuery DefineExpression where
  toQuery DefineExpression' {..} =
    mconcat
      [ "Action" =: ("DefineExpression" :: ByteString),
        "Version" =: ("2013-01-01" :: ByteString),
        "DomainName" =: _deDomainName,
        "Expression" =: _deExpression
      ]

-- | The result of a @DefineExpression@ request. Contains the status of the newly-configured expression.
--
--
--
-- /See:/ 'defineExpressionResponse' smart constructor.
data DefineExpressionResponse = DefineExpressionResponse'
  { _derrsResponseStatus ::
      !Int,
    _derrsExpression ::
      !ExpressionStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DefineExpressionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrsResponseStatus' - -- | The response status code.
--
-- * 'derrsExpression' - Undocumented member.
defineExpressionResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  -- | 'derrsExpression'
  ExpressionStatus ->
  DefineExpressionResponse
defineExpressionResponse
  pResponseStatus_
  pExpression_ =
    DefineExpressionResponse'
      { _derrsResponseStatus =
          pResponseStatus_,
        _derrsExpression = pExpression_
      }

-- | -- | The response status code.
derrsResponseStatus :: Lens' DefineExpressionResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

-- | Undocumented member.
derrsExpression :: Lens' DefineExpressionResponse ExpressionStatus
derrsExpression = lens _derrsExpression (\s a -> s {_derrsExpression = a})

instance NFData DefineExpressionResponse
