{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.CreateRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a rule for the specified listener. The listener must be
-- associated with an Application Load Balancer.
--
-- Each rule consists of a priority, one or more actions, and one or more
-- conditions. Rules are evaluated in priority order, from the lowest value
-- to the highest value. When the conditions for a rule are met, its
-- actions are performed. If the conditions for no rules are met, the
-- actions for the default rule are performed. For more information, see
-- <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules Listener rules>
-- in the /Application Load Balancers Guide/.
module Network.AWS.ELBv2.CreateRule
  ( -- * Creating a Request
    CreateRule (..),
    newCreateRule,

    -- * Request Lenses
    createRule_tags,
    createRule_listenerArn,
    createRule_conditions,
    createRule_priority,
    createRule_actions,

    -- * Destructuring the Response
    CreateRuleResponse (..),
    newCreateRuleResponse,

    -- * Response Lenses
    createRuleResponse_rules,
    createRuleResponse_httpStatus,
  )
where

import Network.AWS.ELBv2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateRule' smart constructor.
data CreateRule = CreateRule'
  { -- | The tags to assign to the rule.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The Amazon Resource Name (ARN) of the listener.
    listenerArn :: Prelude.Text,
    -- | The conditions.
    conditions :: [RuleCondition],
    -- | The rule priority. A listener can\'t have multiple rules with the same
    -- priority.
    priority :: Prelude.Natural,
    -- | The actions.
    actions :: [Action]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createRule_tags' - The tags to assign to the rule.
--
-- 'listenerArn', 'createRule_listenerArn' - The Amazon Resource Name (ARN) of the listener.
--
-- 'conditions', 'createRule_conditions' - The conditions.
--
-- 'priority', 'createRule_priority' - The rule priority. A listener can\'t have multiple rules with the same
-- priority.
--
-- 'actions', 'createRule_actions' - The actions.
newCreateRule ::
  -- | 'listenerArn'
  Prelude.Text ->
  -- | 'priority'
  Prelude.Natural ->
  CreateRule
newCreateRule pListenerArn_ pPriority_ =
  CreateRule'
    { tags = Prelude.Nothing,
      listenerArn = pListenerArn_,
      conditions = Prelude.mempty,
      priority = pPriority_,
      actions = Prelude.mempty
    }

-- | The tags to assign to the rule.
createRule_tags :: Lens.Lens' CreateRule (Prelude.Maybe (Prelude.NonEmpty Tag))
createRule_tags = Lens.lens (\CreateRule' {tags} -> tags) (\s@CreateRule' {} a -> s {tags = a} :: CreateRule) Prelude.. Lens.mapping Prelude._Coerce

-- | The Amazon Resource Name (ARN) of the listener.
createRule_listenerArn :: Lens.Lens' CreateRule Prelude.Text
createRule_listenerArn = Lens.lens (\CreateRule' {listenerArn} -> listenerArn) (\s@CreateRule' {} a -> s {listenerArn = a} :: CreateRule)

-- | The conditions.
createRule_conditions :: Lens.Lens' CreateRule [RuleCondition]
createRule_conditions = Lens.lens (\CreateRule' {conditions} -> conditions) (\s@CreateRule' {} a -> s {conditions = a} :: CreateRule) Prelude.. Prelude._Coerce

-- | The rule priority. A listener can\'t have multiple rules with the same
-- priority.
createRule_priority :: Lens.Lens' CreateRule Prelude.Natural
createRule_priority = Lens.lens (\CreateRule' {priority} -> priority) (\s@CreateRule' {} a -> s {priority = a} :: CreateRule)

-- | The actions.
createRule_actions :: Lens.Lens' CreateRule [Action]
createRule_actions = Lens.lens (\CreateRule' {actions} -> actions) (\s@CreateRule' {} a -> s {actions = a} :: CreateRule) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest CreateRule where
  type Rs CreateRule = CreateRuleResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreateRuleResult"
      ( \s h x ->
          CreateRuleResponse'
            Prelude.<$> ( x Prelude..@? "Rules" Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateRule

instance Prelude.NFData CreateRule

instance Prelude.ToHeaders CreateRule where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath CreateRule where
  toPath = Prelude.const "/"

instance Prelude.ToQuery CreateRule where
  toQuery CreateRule' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("CreateRule" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2015-12-01" :: Prelude.ByteString),
        "Tags"
          Prelude.=: Prelude.toQuery
            (Prelude.toQueryList "member" Prelude.<$> tags),
        "ListenerArn" Prelude.=: listenerArn,
        "Conditions"
          Prelude.=: Prelude.toQueryList "member" conditions,
        "Priority" Prelude.=: priority,
        "Actions"
          Prelude.=: Prelude.toQueryList "member" actions
      ]

-- | /See:/ 'newCreateRuleResponse' smart constructor.
data CreateRuleResponse = CreateRuleResponse'
  { -- | Information about the rule.
    rules :: Prelude.Maybe [Rule],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rules', 'createRuleResponse_rules' - Information about the rule.
--
-- 'httpStatus', 'createRuleResponse_httpStatus' - The response's http status code.
newCreateRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateRuleResponse
newCreateRuleResponse pHttpStatus_ =
  CreateRuleResponse'
    { rules = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the rule.
createRuleResponse_rules :: Lens.Lens' CreateRuleResponse (Prelude.Maybe [Rule])
createRuleResponse_rules = Lens.lens (\CreateRuleResponse' {rules} -> rules) (\s@CreateRuleResponse' {} a -> s {rules = a} :: CreateRuleResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
createRuleResponse_httpStatus :: Lens.Lens' CreateRuleResponse Prelude.Int
createRuleResponse_httpStatus = Lens.lens (\CreateRuleResponse' {httpStatus} -> httpStatus) (\s@CreateRuleResponse' {} a -> s {httpStatus = a} :: CreateRuleResponse)

instance Prelude.NFData CreateRuleResponse
